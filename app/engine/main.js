// Welcome to JSS , this is the main script that perform operations and functions to the jss file after reading it and then write it in a js file
// This code is made by othman Kharbouch github : othman4dev
// Comments are written by othman Kharbouch

// Importing the required modules

const fs = require('fs');
const { ESLint } = require("eslint");
const { lint } = require('stylelint');
const parser = require('../../config/grammar/grammar2.js');
const yargs = require('yargs');
const chalk = require('chalk');
const util = require('util');
Object.assign(global, require('./handlers.js'));
const clear = require('clear');
const { exec } = require('child_process');
const prettier = require('prettier');
const { chalkLoger } = require('./tools.js');
const { handleStatement } = require('./handlers.js');

// Clear the console.
clear();


const argv = yargs
    .option('tree', {
        alias: 't',
        description: 'Add the parsed code to ./config/schema/parseTree.t file',
        type: 'boolean'
    })
    .option('js', {
        alias: 's',
        description: 'Depend on JavaScript code only (without CSS)',
        type: 'boolean'
    })
    .option('css', {
        alias: 'c',
        description: 'Depend on CSS code only (without JavaScript, !! No special features !!)',
        type: 'boolean'
    })
    .option('both', {
        alias: 'b',
        description: 'Depend on both JavaScript and CSS code',
        type: 'boolean'
    })
    .option('helpme',{
        alias: 'h',
        description: 'Show help about JSS framework',
        type: 'boolean'
    })
    .argv;

var codeType = 'both';
var errorCount = 0;

if (argv.helpme) {
    showHelp();
}

function main() {
    chalkLoger('text', 'JSS framework is starting...');

    let base = '';
    try {
        base = fs.readFileSync('app/ready/base.js', 'utf8');
        chalkLoger('text', 'Reading base.js file...');
    } catch (err) {
        chalkLoger('error', 'Error reading base.js file');
    }
    
    fs.readFile('style.jss', 'utf8', (err, data) => {
        if (err) {
            chalkLoger('error', 'Error reading style.jss file');
            return;
        }
        let jssLength = data.split('\n').length;
        let js = '';
        let css = '';

        js += base;
        js += `\n`;

        chalkLoger('text', `Reading ${jssLength} lines from style.jss...`); 

        let parseTree;
        let stylesheet;
        if (!argv.scan) {
            try {
                parseTree = parser.parse(data);
                stylesheet = parseTree[1].stylesheet;
            } catch (e) {
                chalkLoger('error', `Error parsing the JSS code: \n\n ==> ${e.message} \n at line ${e.location.start.line}, column ${e.location.start.column}.\n`); 
                return;
            }
        }
        
        if (argv.tree) {
            chalkLoger('note', 'Adding the parsed code tree to ./config/schema/parseTree.t file');
            const tree = util.inspect(parseTree[1], {depth: null});
            fs.writeFileSync( 'config/schema/parseTree.t' , tree);
        }
        if (argv.js) {
            codeType = 'js';
            chalkLoger('comment', 'Generating JavaScript code only (without CSS)');
            stylesheet.forEach((stat) => {
                if (localStat.type == 'animation' || localStat.type == 'keyframes' || localStat.type == 'media') {
                    console.log('animations and media queries and keyframes are not supported in js only mode');
                } else if (stat.stat.selector && stat.stat.selector.type == 'multi_selector') {
                    let array2 = JSON.parse(handleStatement(stat, handleMultiSelector, 'Multi selector with css error'));
                    for (let i = 0; i < array2.length; i++) {
                        js += handleStatement(array2[i], handleSelectorBlock, 'multi selector with css error');
                    }
                } else  if (stat.type == 'selector_block') {
                    js += handleStatement(stat, handleSelectorBlock, 'selector block');
                } else if (stat.type == 'function') {
                    if (stat.stat.function.value == 'delay') {
                        js += handleStatement(stat, handleDelay, 'delay function');
                    } else if (stat.stat.function.value == 'event') {
                        if (stat.stat.function_param.selector.type == '.') {
                            js += handleStatement(stat, handleLoopFunction, 'loop function');
                        } else {
                            js += handleStatement(stat, handleFunction, 'function');
                        }
                    }
                } else if (stat.type == 'conditional') {
                    js += handleStatement(stat, handleConditional, 'conditional');
                } else if (stat.type == 'tunnel') {
                    js += handleStatement(stat, handleTunnel, 'tunnel');
                } else if (stat.type == 'block_variable') {
                    js += handleStatement(stat, handleVariableBlock, 'block variable error');
                } else if (stat.type == 'variable') {
                    js += handleStatement(stat, handleVariable, 'variable');
                }
                fs.writeFileSync('jss.js', js);
            });
            js += `\n/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */`;
            
            fs.writeFileSync('jss.js', js);

            formatFile('jss.js').catch(console.error);
            
            js = fs.readFileSync('jss.js', 'utf8');

            const lineCount = js.split('\n').length;

            chalkLoger('success', `Adding base script to jss.js`);

            chalkLoger('success', `Wrote ${lineCount} lines to jss.js`);
        }
        if (argv.css) {
            codeType = 'css';
            chalkLoger('comment', 'Generating CSS code only (without JavaScript)');
        }
        if (argv.both) {
            codeType = 'both';
            chalkLoger('comment', 'Generating both JavaScript and CSS code');
            stylesheet.forEach((stat) => {
                if (stat.type == 'keyframes') {
                    css += handleStatement(stat, handleKeyframes, 'keyframes block error');
                } else if (stat.type == 'media') {
                    let temp = handleStatement(stat, handleMedia, ' media block error');
                    css += temp[0];
                    js += temp[1];
                    console.log(css);
                } else if (stat.stat.selector && stat.stat.selector.type == 'multi_selector') {
                    let array2 = JSON.parse(handleStatement(stat, handleMultiSelectorWithCSS, 'Multi selector with css error'));
                    for (let i = 0; i < array2.length; i++) {
                        css += handleStatement(array2[i], handleSelectorBlockWithCSS, 'multi selector with css error')[0];
                        js += handleStatement(array2[i], handleSelectorBlockWithCSS, 'multi selector with css error')[1];
                    }
                } else if (stat.type == 'selector_block') {
                    css += handleStatement(stat, handleSelectorBlockWithCSS, 'selector block with css')[0];
                    js += handleStatement(stat, handleSelectorBlockWithCSS, 'selector block with css')[1];
                } else if (stat.type == 'function') {
                    if (stat.stat.function.value == 'delay') {
                        js += handleStatement(stat, handleDelay, 'delay function');
                    } else if (stat.stat.function.value == 'event') {
                        if (stat.stat.function_param.selector.type == '.') {
                            js += handleStatement(stat, handleLoopFunction, 'loop function');
                        } else {
                            js += handleStatement(stat, handleFunction, 'function');
                        }
                    }
                } else if (stat.type == 'conditional') {
                    js += handleStatement(stat, handleConditional, 'conditional');
                } else if (stat.type == 'tunnel') {
                    js += handleStatement(stat, handleTunnel, 'tunnel');
                } else if (stat.type == 'block_variable') {
                    js += handleStatement(stat, handleVariableBlock, 'block variable error');
                } else if (stat.type == 'variable') {
                    js += handleStatement(stat, handleVariable, 'variable');
                }
                fs.writeFileSync('jss.js', js);
            });
            js += `\n/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */`;
        
            fs.writeFileSync('jss.js', js);

            js = fs.readFileSync('jss.js', 'utf8');

            formatFile('jss.js').catch(console.error);

            fs.writeFileSync('jss.css', css);

            fs.readFile('jss.css', 'utf8', (err, data) => {
                if (err) throw err;
            
                let rulesBySelector = {};
                let rules = data.split('\n');
            
                rules.forEach(rule => {
                    let [selector, declarations] = rule.split('{');
                    selector = selector.trim();
                
                    if (declarations) {
                        declarations = declarations.split('}')[0].trim();
                
                        if (!rulesBySelector[selector]) {
                            rulesBySelector[selector] = [];
                        }
                
                        rulesBySelector[selector].push(declarations);
                    }
                });
                let newCss = '';
                for (let selector in rulesBySelector) {
                    newCss += `${selector} {\n\t${rulesBySelector[selector].join(';\n\t')};\n}\n`;
                }
            
                fs.writeFile('jss.css', newCss, err => {
                    if (err) throw err;
                    formatFile('jss.css').catch(console.error);
                });

                
            });

            css = fs.readFileSync('jss.css', 'utf8');

            chalkLoger('success', `Adding base script to jss.js`);

            const lineCount = js.split('\n').length;
            chalkLoger('success', `Wrote ${lineCount} lines to jss.js`);

            const cssLineCount = css.split('\n').length;
            chalkLoger('success', `Wrote ${cssLineCount} lines to jss.css`);
        }
        if (argv.scan) {
            try {
                parseTree = parser.parse(data);
                stylesheet = parseTree[1].stylesheet;
            } catch (e) {
                let scanResult = scanForErrors(data, parser);
                let allErrors = scanResult.errors;
                errorCount = scanResult.errorCount;
                allErrors.forEach(element => {
                    let errorNearLocal = element.body.split('\n')[element.location.start.line - 1];
                    console.log(chalk.redBright.bold(`\n----------------------------- ERROR -----------------------------\n\n`));
                    console.log(chalk.redBright.bold(`JSS : ${element.message}\n`));
                    console.log(chalk.redBright.bold(`Near : ${errorNearLocal}`));
                    console.log(chalk.redBright.bold(`        ^^^^^^^^^^^^^^^^^^^^^^^^^^^\n`));
                    console.log(chalk.redBright.bold(`At Line ${element.location.start.line}, Column ${element.location.start.column}\n`));
                    console.log(chalk.redBright.bold(`Please check your JSS syntax to fix the problem.\n`));
                    console.log(chalk.redBright(`ERROR Time : ` + new Date().toLocaleTimeString()));
                    console.log(chalk.redBright.bold(`-----------------------------------------------------------------`));
                });
            }
            if (errorCount == 0) {
                try {
                    stylesheet.forEach((stat) => {
                        if (stat.type == 'selector_block') {
                            handleStatementScan(stat, handleSelectorBlock, 'selector block');
                        } else if (stat.type == 'function') {
                            if (stat.stat.function.value == 'delay') {
                                handleStatementScan(stat, handleDelay, 'delay function');
                            } else if (stat.stat.function.value == 'event') {
                                if (stat.stat.function_param.selector.type == '.') {
                                    handleStatementScan(stat, handleLoopFunction, 'loop function');
                                } else {
                                    handleStatementScan(stat, handleFunction, 'function');
                                }
                            }
                        } else if (stat.type == 'conditional') {
                            handleStatementScan(stat, handleConditional, 'conditional');
                        } else if (stat.type == 'tunnel') {
                           handleStatementScan(stat, handleTunnel, 'tunnel');
                        }
                    });
                } catch (e) {
                    console.log(chalk.white.bgRedBright(`\n* ERROR /!\\ :`),chalk.redBright.bold(`\t JSS Core error`));
                    console.log(chalk.redBright.bold(`\n* Error : ${e.message}`));
                    console.log(chalk.red.bgYellowBright.bold(`\n* Please undo changes or reinstall the framework.\n`));
                    return;
                }
            }

            chalkLoger('text', 'Scanning the JSS code for errors');

            if (errorCount == 0) {
                chalkLoger('success', 'No errors found in the JSS code');
            } else {
                chalkLoger('error', `Found ${errorCount} possible errors in the JSS code`);
            }
        }
    });
    if (errorCount == 0 && !argv.tree) {
        setTimeout(() => {
            checkFiles('both');
        }, 500);
    }

    }
    main();

    //Check output files for errors.

    var retries = 0;

    async function checkFiles() {
        try {
            let CSSStatus = await lintCSSFile('jss.css');
            let JSStatus = await lintFile('jss.js');
    
            if (CSSStatus == 'false' && (codeType == 'both' || codeType == 'css')) {
                chalkLoger('warning', 'JSS failed to compile the CSS file. Please check the jss.css file for errors.');
            }
    
            if (JSStatus == 'false' && (codeType == 'both' || codeType == 'js')) {
                chalkLoger('warning', 'JSS failed to compile the JS file. Please check the jss.js file for errors.');
            }
        } catch (error) {
            chalkLoger('error', 'Error checking the output files for errors');
        }
        chalkLoger('credit', 'JSS Framework');
    }