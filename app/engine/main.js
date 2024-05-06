// Welcome to JSS , this is the main script that perform operations and functions to the jss file after reading it and then write it in a js file
// This code is made by othman Kharbouch github : othman4dev
// Comments are written by othman Kharbouch

const fs = require('fs');
const parser = require('../../config/grammar/grammar2.js');
const yargs = require('yargs');
const chalk = require('chalk');
const util = require('util');
const { log } = require('console');

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
    .help()
    .alias('help', 'h')
    .argv;

function handleSelector(selector) {
    let js = ``;
    
    if (selector.type == '#') {
        js += `document.querySelector('${selector.type}${removeWhiteSpace(selector.name.value)}')`;
    } else if (selector.type == ".") {
        if (selector.indices[0] !== undefined) {
            js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices[0]}]`;
        } else {
            return 'handleLoop';
            // js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[0]`;
        }
    } else if (selector.type == '') {
        if (selector.indices[0] !== undefined) {
            js += `document.querySelectorAll('${removeWhiteSpace(selector.name.value)}')[${selector.indices[0]}]`;
        } else {
            return 'handleLoop';
            // js += `document.querySelectorAll('${removeWhiteSpace(selector.name.value)}')[0]`;
        }
    }
    return js;
}

function handleSelectorBlock(stat) {
    let js = ``;
    if (stat.stat.selector.pseudoClasses[0]) {
        if (stat.stat.selector.type == '.') {
            js += handlePseudoClassesLoop(stat);
        } else {
            js += handlePseudoClasses(stat);
        }
    } else if (handleSelector(stat.stat.selector) == 'handleLoop') {
        js += handleLoop(stat.stat);
    } else {
        stat.stat.propreties.forEach(element => {
            js += handleSelector(stat.stat.selector) + handlePropValue(element);
        });
    }
    return js;
}

function handleSelectorBlockFunction(stat) {
    //console.log(stat);
    let js = ``;
    if (handleSelector(stat.selector) == 'handleLoop') {
        js += handleLoop(stat);
    } else {
        stat.propreties.forEach(element => {
            js += handleSelector(stat.selector) + handlePropValue(element);
        });
    }
    return js;
}

function handlePropValue(prop) {
    let js = ``;
    if (prop.value.type == 'arrow_function') {
        js += `.style.${removeWhiteSpace(prop.property)} = `;
        js += handleArrowFunction(prop.value);
    } else if (prop.value.type == 'calculation') {
        js += `.style.${removeWhiteSpace(prop.property)} = `;
        js += handleCalculation(prop);
    } else if (prop.value.type == 'number_unit') {
        js += `.style.${removeWhiteSpace(prop.property)} = '${prop.value.value.number.value}${prop.value.value.unit.value}';\n`;
    } else  if (prop.value.type == 'style_function') {
        js += `.style.${removeWhiteSpace(prop.property)} = '${prop.value.value.value}';\n`;
    }
     else {
        js += `.style.${removeWhiteSpace(prop.property)} = '${prop.value.value.value}';\n`;
    }
    return js;
}

function handleArrowFunction(arrow) {
    let js = ``;
    selector = arrow.value.selector;
    if (selector.type == '#') {
        js += `getComputedStyle(document.querySelector('${selector.type}${removeWhiteSpace(selector.name.value)}')).getPropertyValue('${toCSSProp(arrow.value.javaScriptStyleElement.value)}');\n`;
    } else if (selector.type == ".") {
        js += `getComputedStyle(document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.value.javaScriptStyleElement.value)}');\n`;
    } else {
        js += `getComputedStyle(document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.value.javaScriptStyleElement.value)}');\n`;
    }
    return js;
}

function toCSSProp(javaScriptStyleProp) {
    let cssProp = javaScriptStyleProp.replace(/[A-Z]/g, (match) => `-${match.toLowerCase()}`);;
    return cssProp;
}

function ToString(input) {
    if (Array.isArray(input)) {
        return input.join('');
    } else if (typeof input === 'object' && input !== null) {
        return JSON.stringify(input);
    } else {
        return String(input);
    }
}

function handleCalcArrow(term) {
    let js = ``;
    // console.log(term);
    selector = term.selector;
    if (selector.type == '#') {
        js += `getComputedStyle(document.querySelector('${selector.type}${removeWhiteSpace(selector.name.value)}')).getPropertyValue('${toCSSProp(term.javaScriptStyleElement.value)}')`;
    } else if (selector.type == ".") {
        js += `getComputedStyle(document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(term.javaScriptStyleElement.value)}')`;
    } else {
        js += `getComputedStyle(document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(term.javaScriptStyleElement.value)}')`;
    }
    return js;
}

function handleCalculation(calc) {
    // console.log(calc.value.value.term1);
    let js = ``;
    if (calc.value.value.term1.type == 'arrow_function') {
        js += " calc( " + handleCalcArrow(calc.value.value.term2) + " , " ;
    } else  if (calc.value.value.term1.type == 'number_unit') {
        js += " calc( `" + `${removeWhiteSpace(calc.value.value.term1.number.value)}${removeWhiteSpace(calc.value.value.term1.unit.value)}` + "` , " ;
    } else {
        js += " calc( `" + `${removeWhiteSpace(calc.value.value.term1.value)}` + "` , " ;
    }
    if (calc.value.value.term2.type == 'arrow_function') {
        // console.log(calc.value.value.term2);
        js += handleCalcArrow(calc.value.value.term2);
    } else if ( calc.value.value.term2.type == 'number_unit') {
        js += "` "+ `${removeWhiteSpace(calc.value.value.term2.number.value)}${removeWhiteSpace(calc.value.value.term2.unit.value)}` + "`";
    } else {
        js +=  "` " + `${removeWhiteSpace(calc.value.value.term2.value)}` + "`";
    }
    js += " , " + `'${removeWhiteSpace(calc.value.value.operator)}' ` + ");\n";

    return js;
}

function handleLoop(stat) {
    let js = ``;
    js += `document.querySelectorAll('${stat.selector.type}${removeWhiteSpace(stat.selector.name.value)}').forEach((element) => {\n`;
    stat.propreties.forEach(element => {
        js += `\telement` + handlePropValue(element);
    });
    js += `});\n`;
    return js;
}

function main() {

console.log(chalk.yellow.bgBlue('JSS framework running ... '));

let base = '';
fs.readFile('app/ready/base.js', 'utf8' , (err2, baseCode) => {
    if (err2) {
        console.error('Error reading base file:', err2);
        return;
    }
    base = baseCode;
});

fs.readFile('style.jss', 'utf8', (err, data) => {
    if (err) {
        console.error('Error reading file:', err);
        return;
    }
    let js = '';
    js += base;
    js += `\n`;
    
    const parseTree = parser.parse(data);
    const stylesheet = parseTree[1].stylesheet;

    if (argv.tree) {
        console.log(chalk.redBright.bold(`\n* Adding the parsed code to ./config/schema/parseTree.t file`));
        const tree = util.inspect(parseTree[1], {depth: null});
        fs.writeFileSync( 'config/schema/parseTree.t' , tree);
    } else if (argv.js) {
        console.log(chalk.gray.bold(`\n* Generating JavaScript code only (without CSS)`));
    }

    stylesheet.forEach((stat) => {
        if (stat.type == 'selector_block') {
            js += handleSelectorBlock(stat);
        } else if (stat.type == 'function') {
            if (stat.stat.selector.type == '.') {
                js += handleLoopFuntion(stat);
            } else {
                js += handleFuntion(stat);
            }
        } else if (stat.type == 'conditional') {
            js += handleConditional(stat);
        }
    });

    js += `\n/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */`;

    fs.writeFileSync('jss.js', js);

    const lineCount = js.split('\n').length;
    console.log(chalk.yellow.bold(`\n* Wrote ${lineCount} lines to jss.js`));

    console.log(chalk.greenBright.bold(`\n* Adding base script to jss.js`));

    console.log(chalk.underline.magenta('\nMade By Otman Kharbouch : ') , chalk.blueBright.bold('Othman4dev'), chalk.underline.magenta(' (GitHub)\n'));

});
}
main();
function removeWhiteSpace(string) {
    return string.split(' ')[0];
}
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

function handleFuntion(func) {
    js = '';
    if (func.stat.function == 'event') {
        js += handleDefaultSelector(func.stat.selector);
        js += `.addEventListener('${func.stat.eventType.value}', () => {\n`;
        func.stat.statements.forEach(element => {
            if (element.type == 'selector_block') {
                js += handleSelectorBlockFunction(element);
            }
        });
        js += `});\n`;
    }
    return js;
}

function handleLoopFuntion(func) {
    js = '';
    if (func.stat.function == 'event') {
        js += `document.querySelectorAll('${func.stat.selector.type}${removeWhiteSpace(func.stat.selector.name.value)}').forEach((element) => {\n`;
        js += `\telement.addEventListener('${func.stat.eventType.value}', () => {\n`;
        func.stat.statements.forEach(element => {
            if (element.type == 'selector_block') {
                js += handleSelectorBlockFunction(element);
            }
        });
        js += `});\n`;
        js += `});\n`;
    }
    return js;

}

function handleDefaultSelector(selector) {
    let js = ``;
    if (selector.type == '#') {
        js += `document.querySelector('${selector.type}${removeWhiteSpace(selector.name.value)}')`;
    } else if (selector.type == ".") {
        if (selector.indices[0] !== undefined) {
            js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices[0]}]`;
        } else {
            js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[0]`;
        }
    } else if (selector.type == '') {
        if (selector.indices[0] !== undefined) {
            js += `document.querySelectorAll('${removeWhiteSpace(selector.name.value)}')[${selector.indices[0]}]`;
        } else {
            js += `document.querySelectorAll('${removeWhiteSpace(selector.name.value)}')[0]`;
        }
    }
    return js;
}
function handleSelectorSimple(selector) {
    let js = ``;
    js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')`;
    return js;
}
function handlePseudoClasses(stat) {
    // console.log(util.inspect(stat.stat.selector, {depth: null}));
    let js = '';
    if (removeWhiteSpace(stat.stat.selector.pseudoClasses[0].value.value) == 'hover') {
        if (stat.stat.selector.type == '.') {
            js += handleHoverLoop(stat);
        } else {
            js += handleHover(stat);
        }
    } else {
        js += handleDefaultSelector(stat.stat.selector);
            js += `.addEventListener('${stat.stat.selector.pseudoClasses[0].value.value}', (event) => {\n`;
        stat.stat.propreties.forEach(element => {
            js += `\tevent.target` + handlePropValue(element);
        });
        js += `});\n`;
    }
    return js;
}
function handlePseudoClassesLoop(stat) {
    let js = '';
    if (removeWhiteSpace(stat.stat.selector.pseudoClasses[0].value.value) == 'hover') {
        js += handleHoverLoop(stat);
    } else {
        js += `element.addEventListener('${stat.stat.selector.pseudoClasses[0].value.value}', () => {\n`;
        stat.stat.propreties.forEach(element => {
            js += `\telement` + handlePropValue(element);
        });
        js += `});\n`;
    }
    return js;
}
function handleHover(stat) {
    let js = '';
    //store the style value in random variables
    const localID = uniqueid();
    js += `var styleStore${localID} = null;\n`;
    js += handleDefaultSelector(stat.stat.selector);
        js += `.addEventListener('mouseover', (event) => {\n`;
        js += `\tstyleStore${localID} = window.getComputedStyle(document.querySelector('${stat.stat.selector.type}${removeWhiteSpace(stat.stat.selector.name.value)}'));\n`;
    stat.stat.propreties.forEach(element => {
        js += `\tevent.target` + handlePropValue(element);
    });
    js += `});\n`;
    //
    js += handleDefaultSelector(stat.stat.selector);
    js += `.addEventListener('mouseout', (event) => {\n`;
    js += `\tapplyStyles(event.target, styleStore${localID});\n`;
    js += `});\n`;
    return js;
}
function handleHoverLoop(stat) {
    let js = '';
    const localID = uniqueid();
    js += `var styleStore${localID} = null;\n`;
    js += `${handleSelectorSimple(stat.stat.selector)}.forEach((element) => {\n`;
    //store the style value in random variables
        js += `\telement.addEventListener('mouseover', (event) => {\n`;
        js += `\t\tstyleStore${localID} = window.getComputedStyle(document.querySelector('${stat.stat.selector.type}${removeWhiteSpace(stat.stat.selector.name.value)}'));\n`;
    stat.stat.propreties.forEach(element => {
        js += `\t\tevent.target` + handlePropValue(element);
    });
    js += `\t});\n`;
    //
    js += `\telement.addEventListener('mouseout', (event) => {\n`;
    js += `\t\tapplyStyles(event.target, styleStore${localID});\n`;
    js += `\t});\n`;
    js += `});\n`;
    return js;
}
function uniqueid() {
    return Math.random().toString(36).substr(2, 9);
}
function handleConditional(stat) {
    let js = '';
    js += `if ( compare(`;
    if (stat.stat.if.left.type == 'arrow_function') {
        js += handleArrowFunctionConditional(stat.stat.if.left);
    } else if (stat.stat.if.left.type == 'string') {
        js += ' ' + stat.stat.if.left.value + ' ';
    }
    js += `, '${stat.stat.if.comparison}', `;
    if (stat.stat.if.right.type == 'arrow_function') {
        js += handleArrowFunctionConditional(stat.stat.if.right);
    } else if (stat.stat.if.right.type == 'string') {
        js += ' ' + stat.stat.if.right.value + ' ';
    }
    js += `)) {\n`;
    stat.stat.then.forEach(element => {
        if (element.type == 'selector_block') {
            js += '\t' + handleSelectorBlock(element);
        }
    });
    js += `}\n`;
    return js;
}
function handleArrowFunctionConditional(arrow) {
    let js = ``;
    selector = arrow.selector;
    if (selector.type == '#') {
        js += ` getComputedStyle(document.querySelector('${selector.type}${removeWhiteSpace(selector.name.value)}')).getPropertyValue('${toCSSProp(arrow.javaScriptStyleElement.value)}') `;
    } else if (selector.type == ".") {
        js += ` getComputedStyle(document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.javaScriptStyleElement.value)}') `;
    } else {
        js += ` getComputedStyle(document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name.value)}')[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.javaScriptStyleElement.value)}') `;
    }
    return js;
}