
const chalk = require('chalk');
const { ESLint } = require("eslint");
const stylelint = require('stylelint');
const fs = require('fs');
const prettier = require('prettier');

// turn a JavaScript style property to a CSS property.
function toCSSProp(javaScriptStyleProp) {
    let cssProp = javaScriptStyleProp.replace(/[A-Z]/g, (match) => `-${match.toLowerCase()}`);
    return cssProp;
}
// turn any JSON format to text.
function ToString(input) {
    if (Array.isArray(input)) {
        return input.join('');
    } else if (typeof input === 'object' && input !== null) {
        return JSON.stringify(input);
    } else {
        return String(input);
    }
}
// Removes whitespaces from a word.
function removeWhiteSpace(string) {
    try {
        return string.replace(/\s/g, '');
    } catch (error) {
        try {
            //Tuen array to string
            return string.join('').replace(/\s/g, '');
        } catch (error2) {
            return string;
        }
    }
}
// Generates a random unique id.
function uniqueid() {
    return Math.random().toString(36).substr(2, 9);
}

function handleValueToText(value) {
    let text;
    if (value.type == 'word') {
        text = value.value.value;
    } else if (value.type == 'number_unit') {
        text = value.value.number.value + value.value.unit.value;
    } else if (value.type == 'number') {
        text = value.value.value;
    } else if (value.type == 'style_function') {
        text = value.value.value;
    } else if (value.type == 'color') {
        text = value.value.value;
    } else if (value.type == 'string') {
        text = "'" + removeWhiteSpace(value.value.value) + "'";
    } else if (value.type == 'text') {
        text = "'" + value.value.value + "'";
    } else if (value.type == 'general') {
        text = value.value.value;
    } else {
        text = "'" + value.value + "'";
    }
    return text;
}

function handleAnyToText(value) {
    text = "'" + value.value + "'";
    return text;
}

async function animate(message) {
    let spinnerOpen = '[';
    let spinnerClose = ']';
    let i = 0;
    for (let x = 0; x <= 10; x++) {
        let innerLoader = '|'.repeat(x) + '-'.repeat(10 - x);
        process.stdout.write('\r' + chalk.red.bgWhite.bold(spinnerOpen + innerLoader + spinnerClose + ` ${message}`));
        await sleep(500); // Wait for 500ms
    }
}

function scanForErrors(data, parser) {
    var errorCount2 = 0;
    let errors = [];
    let localData = data;
    let lineCount = data.split('\n').length;
    for (let i = 0; i < lineCount; i++) {
        try {
            let output = parser.parse(localData);
        } catch (e) {
            errorCount2++;
            let error = {
                body : localData,
                message : e.message,
                line : e.line,
                column : e.column,
                location : e.location
            }
            errors.push(error);
            let errorLine = e.location.start.line;
            let lines = localData.split('\n');
            lines.splice(errorLine - 1, 1);
            localData = lines.join('\n');
        }
    }
    let returned = {
        errorCount: errorCount2,
        errors: errors
    };
    return returned;
}

async function lintCSSFile(filePath) {
    const text = fs.readFileSync(filePath, 'utf8');
    try {
        const results = await stylelint.lint({
            code: text,
            config: {
                // Your stylelint configuration
                "rules": {
                    "block-no-empty": true,
                    "color-no-invalid-hex": true,
                    // Add more rules as needed
                }
            }
        });

        const hasErrors = results.errored;

        if (hasErrors) {
            chalkLoger('error', 'Error(s) has appeared in the jss.css file.');
            return 'false';
        } else {
            chalkLoger('info', 'No errors found in the jss.css file.');
            return 'true';
        }
    } catch (error) {
        console.log(chalk.yellowBright.bgMagenta('->'), chalk.magenta(error.message));
        return 'false';
    }
}

async function lintFile(filePath) {
    const eslint = new ESLint();
    const text = fs.readFileSync(filePath, 'utf8');
  
    const results = await eslint.lintText(text, { filePath });
    const formatter = await eslint.loadFormatter("stylish");
    const hasErrors = results.some(result => result.errorCount > 0);
  
    if (hasErrors) {
        chalkLoger('error', 'Error(s) has appeared in the jss.js file.');
        return 'false';
    } else {
        chalkLoger('info', 'No errors found in the jss.js file.');
        return 'true';
    
    }
}

async function formatFile(filePath) {
    const fileText = fs.readFileSync(filePath, 'utf8');
    const parser = filePath.endsWith('.js') ? 'babel' : 'css';
    let options = await prettier.resolveConfig(filePath);
    options = options || {};
    options.parser = parser;
    try {
        await prettier.check(fileText, options);
        chalkLoger('success', filePath + ' file was formatted successfully.');
    } catch (error) {
        chalkLoger('error', 'The ' + filePath + ' file was not formatted correctly.');
        return;
    }
    const formatted = await prettier.format(fileText, options);
    fs.writeFileSync(filePath, formatted);
}

function chalkLoger(type, message) {
    if (type == 'error') {
        console.log(chalk.red.bold('\n❌ :'), chalk.red.bold(message));
    } else if (type == 'info') {
        console.log(chalk.blueBright('\nℹ️ :'), chalk.blueBright(message));
    } else if (type == 'success') {
        console.log(chalk.green('\n✅ :'), chalk.greenBright(message));
    } else if (type == 'warning') {
        console.log(chalk.magenta('\n⚠️ :'), chalk.magenta(message));
    } else if (type == 'text') {
        console.log(chalk.whiteBright('\nℹ️ :'), chalk.whiteBright(message));
    } else if (type == 'comment') {
        console.log(chalk.gray('\nℹ️ :'), chalk.gray(message));
    } else if (type == 'note') {
        console.log(chalk.cyanBright('\nℹ️ :'), chalk.cyanBright(message));
    } else if (type == 'credit') {
        console.log(chalk.underline.magenta('\nMade By Otman Kharbouch : ') , chalk.blueBright.bold('Othman4dev :') , chalk.cyanBright.underline('https://github.com/othman4dev'), chalk.underline.magenta('(GitHub)\n'));
    }
}

const packageJson = require('../../package.json');
function showHelp() {
    console.log('\n');

    console.log(chalk.magenta(`
 ▐▄▄▄.▄▄ · .▄▄ · 
  ·██▐█ ▀. ▐█ ▀. 
▪▄ ██▄▀▀▀█▄▄▀▀▀█▄  A simple and lightweight framework
▐▌▐█▌▐█▄▪▐█▐█▄▪▐█  that allows you to style your DOM elements 
 ▀▀▀• ▀▀▀▀  ▀▀▀▀   using JavaScript with a CSS-like syntax.`));

    console.log(chalk.grey('  JSS Compiler v' + packageJson.version + '\n'));
    
    console.log(chalk.blueBright('\n  Available scripts:\n'));
    for (const script in packageJson.scripts && packageJson.scriptDescriptions ) {
        console.log(chalk.greenBright(`- npm run ${script} ->`),chalk.white(`${packageJson.scriptDescriptions[script]}. `));
    }
    chalkLoger('credit', 'Thank you for using JSS Compiler.');
    process.exit(0);
}

module.exports = {
    toCSSProp,
    ToString,
    removeWhiteSpace,
    uniqueid,
    handleValueToText,
    animate,
    scanForErrors,
    lintCSSFile,
    lintFile,
    handleAnyToText,
    formatFile,
    chalkLoger,
    showHelp
};