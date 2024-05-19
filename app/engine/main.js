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
    .help()
    .alias('help', 'h')
    .argv;

var codeType = 'both';
var errorCount = 0;

function main() {
    console.log(chalk.bgBlue('JSS framework running ... '));

    let base = '';
    fs.readFile('app/ready/base.js', 'utf8' , (err2, baseCode) => {
        if (err2) {
            console.error('Error reading base file:', err2);
            return;
        } else{
            base = baseCode;
        }
    });
    
    fs.readFile('style.jss', 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading file:', err);
            return;
        }
        let jssLength = data.split('\n').length;
        let js = '';
        let css = '';
        js += base;
        //This code verify that the base code is added to the js variable, If not it will call the same main function till the fs read the base code.
        if (js == '') {
            main();
        }
        //
        js += `\n`;

        console.log(chalk.red.bgWhite.bold(`\n* Reading ${jssLength} lines from style.jss...`));

        let parseTree;
        let stylesheet;
        if (!argv.scan) {
            try {
                parseTree = parser.parse(data);
                stylesheet = parseTree[1].stylesheet;
            } catch (e) {
                console.log(chalk.redBright.bold(`\n* Error parsing the JSS code: ${e.message}`));
                return;
            }
        }
        
        if (argv.tree) {
            console.log(chalk.redBright.bold(`\n* Added the parsed code tree to ./config/schema/parseTree.t file`));
            const tree = util.inspect(parseTree[1], {depth: null});
            fs.writeFileSync( 'config/schema/parseTree.t' , tree);
        }
        if (argv.js) {
            codeType = 'js';
            console.log(chalk.gray.bold(`\n* Generating JavaScript code only (without CSS)`));
            stylesheet.forEach((stat) => {
                if (stat.stat.selector && stat.stat.selector.type == 'multi_selector') {
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
                    js += handleStatement(stat, handleVariableBlock, 'variable');
                }
                fs.writeFileSync('jss.js', js);
            });
            js += `\n/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */`;
        
            fs.writeFileSync('jss.js', js);
        
            const lineCount = js.split('\n').length;
            console.log(chalk.yellow.bold(`\n* Wrote ${lineCount} lines to jss.js`));
        
            console.log(chalk.greenBright.bold(`\n* Adding base script to jss.js`));
        
            console.log(chalk.underline.magenta('\nMade By Otman Kharbouch : ') , chalk.blueBright.bold('Othman4dev'), chalk.underline.magenta(' (GitHub)\n'));
        }
        if (argv.css) {
            codeType = 'css';
            console.log(chalk.gray.bold(`\n* Generating CSS code only (without JavaScript)`));
        }
        if (argv.both) {
            codeType = 'both';
            console.log(chalk.gray.bold(`\n* Generating both JavaScript and CSS code`));
            stylesheet.forEach((stat) => {
                if (stat.stat.selector && stat.stat.selector.type == 'multi_selector') {
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
                    js += handleStatement(stat, handleVariableBlock, 'variable');
                }
                fs.writeFileSync('jss.js', js);
            });
            js += `\n/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */`;
        
            fs.writeFileSync('jss.js', js);

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
                });
            });
        
            const lineCount = js.split('\n').length;
            console.log(chalk.yellow.bold(`\n* Wrote ${lineCount} lines to jss.js`));

            const cssLineCount = css.split('\n').length;
            console.log(chalk.yellow.bold(`\n* Wrote ${cssLineCount} lines to jss.css`));
        
            console.log(chalk.greenBright.bold(`\n* Adding base script to jss.js`));
        
            console.log(chalk.underline.magenta('\nMade By Otman Kharbouch : ') , chalk.blueBright.bold('Othman4dev'), chalk.underline.magenta(' (GitHub)\n'));
            console.log(chalk.blueBright.underline('https://github.com/othman4dev \n'));
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
            console.log(chalk.redBright.bold(`\n* Scanned the JSS code for errors`));
            if (errorCount == 0) {
                console.log(chalk.greenBright.bold(`\n* 0 errors found in the JSS code\n`));
            } else {
                console.log(chalk.redBright.bold(`\n* Found ${errorCount} possible errors in the JSS code\n`));
            }
        }
    });
    setTimeout(() => {
        checkFiles('both');
    }, 500);
    }
    main();

    //Check output files for errors.

    var retries = 0;

    async function checkFiles() {
        try {
            let CSSStatus = await lintCSSFile('jss.css');
            let JSStatus = await lintFile('jss.js');
    
            if (CSSStatus == 'false') {
                console.log(chalk.yellow.bgMagenta('Retrying CSS Parsing...\n'));
                retries++;
                if (retries > 1) {
                    console.log(chalk.red.bgYellowBright('Too many retries, exiting...\n\n'));
                    process.exit(1);
                } else {
                    // main();
                    checkFiles();
                }
            }
    
            if (JSStatus == 'false') {
                console.log(chalk.yellow.bgMagenta('Retrying JS Parsing...\n'));
                retries++;
                if (retries > 1) {
                    console.log(chalk.red.bgYellowBright('Too many retries, exiting...\n\n'));
                    process.exit(1);
                } else if (retries < 2 && JSStatus == 'false') {
                    // main();
                    checkFiles();
                }
            }
        } catch (error) {
            console.error(error);
        }
    }
    