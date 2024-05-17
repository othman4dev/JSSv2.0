
const chalk = require('chalk');

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
    return string.split(' ')[0];
}
// Generates a random unique id.
function uniqueid() {
    return Math.random().toString(36).substr(2, 9);
}
// Converts a string to an object.
function stringToObject(arrow_function) {
    let selector = arrow_function.split('->')[0];
    let selector_type = selector.split(')')[0];
    selector_type = selector_type.split('(')[1];
    if (selector_type[0] == '#') {
        selector = selector.replace(selector_type, '');
        selector_type = '#';
    } else if (selector_type[0] == '.') {
        selector = selector.replace(selector_type, '');
        selector_type = '.';
    } else {
        selector
    }
    // console.log(selector_type);
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
        text = value.value.value;
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
    let errorCount = 0;
    let errors = [];
    let localData = data;
    let lineCount = data.split('\n').length;
    for (let i = 0; i < lineCount; i++) {
        try {
            let output = parser.parse(localData);
        } catch (e) {
            errorCount++;
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
        errorCount: errorCount,
        errors: errors
    };
    return returned;
}

module.exports = {
    addTabulations,
    toCSSProp,
    ToString,
    removeWhiteSpace,
    uniqueid,
    stringToObject,
    handleValueToText,
    sleep,
    animate,
    scanForErrors
};