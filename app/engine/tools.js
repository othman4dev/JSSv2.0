
const chalk = require('chalk');
const { ESLint } = require("eslint");
const stylelint = require('stylelint');
const fs = require('fs');

// Adds tabulations to a text.
function addTabulations(text, count) {
    return text.split('\n').map(line => '\t'.repeat(count) + line).join('\n');
}
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
    }
    return text;
}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
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
            console.log(chalk.redBright.bgWhite('Possible errors found in the CSS file \n'));
            return 'false';
        } else {
            console.log(chalk.white.bgGreen('No errors found in the CSS file \n'));
            return 'true';
        }
    } catch (error) {
        console.error('Error while linting CSS file:', error);
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
        console.log( chalk.redBright.bgWhite('Possible errors found in the jss.js file \n'));
        return 'false';
    } else {
        console.log( chalk.white.bgGreen('No errors found in the jss.js file \n'));
        return 'true';
    
    }
}

module.exports = {
    addTabulations,
    toCSSProp,
    ToString,
    removeWhiteSpace,
    uniqueid,
    handleValueToText,
    sleep,
    animate,
    scanForErrors,
    lintCSSFile,
    lintFile
};