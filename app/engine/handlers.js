Object.assign(global, require('./tools.js'));
const chalk = require('chalk');
const util = require('util');

function handleFunction(func) {
    js = '';
    if (func.stat.function.value == 'event') {
        if (func.stat.statements[0].type == 'conditional') {
            js += handleDefaultSelector(func.stat.function_param.selector);
            js += `.addEventListener('${func.stat.function_param.eventType.value}', () => {\n`;
            func.stat.statements.forEach(element => {
                js += addTabulations( handleConditional(element), 1);
            });
            js += `});\n`;
        } else {
            js += handleDefaultSelector(func.stat.function_param.selector);
            js += `.addEventListener('${func.stat.function_param.eventType.value}', () => {\n`;
            func.stat.statements.forEach(element => {
                if (element.type == 'selector_block') {
                    js += handleSelectorBlockFunction(element.stat);
                }
            });
            js += `});\n`;
        }
    } else if(func.stat.function.value == 'delay') {
        console.warn('Unexpected delay function in handleFunction()');
    }
    return js;
}

function handleLoopFunction(func) {
    js = '';
    if (func.stat.statements[0].type == 'conditional') {
        js += `${handleSelectorSimple(func.stat.function_param.selector)}.forEach((element) => {\n`;
        js += `\telement.addEventListener('${func.stat.function_param.eventType.value}', () => {\n`;
        func.stat.statements.forEach(element => {
            js += addTabulations( handleConditional(element), 2);
        });
        js += `});\n`;
        js += `});\n`;
    } else if (func.stat.function == 'event') {
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
        js += `${handleSelectorSimple(selector)}`;
    } else if (selector.type == ".") {
        if (selector.indices[0] !== undefined) {
            js += `${handleSelectorSimple(selector)}[${selector.indices[0]}]`;
        } else {
            js += `${handleSelectorSimple(selector)}[0]`;
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
    if (selector.type == '' || selector.type == '.') {
        js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name[0])}')`;
        
    } else{
        js += `document.querySelector('${selector.type}${removeWhiteSpace(selector.name[0])}')`;
    }
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

function handleConditional(stat) {
    let js = '';
    js += `if ( compare(`;
    if (stat.stat.if.left.type == 'arrow_function') {
        js += handleArrowFunctionConditional(stat.stat.if.left);
    } else if (stat.stat.if.left.type == 'string') {
        js += ' ' + `'${stat.stat.if.left.value}'` + ' ';
    }
    js += `, '${stat.stat.if.comparison}', `;
    if (stat.stat.if.right.type == 'arrow_function') {
        js += handleArrowFunctionConditional(stat.stat.if.right);
    } else if (stat.stat.if.right.type == 'string') {
        js += ' ' + `'${stat.stat.if.right.value}'` + ' ';
    }
    js += `)) {\n`;
    stat.stat.then.forEach(element => {
        if (element.type == 'selector_block') {
            js += '\t' + handleSelectorBlock(element);
        } else if (element.type == 'function') {
            if (element.stat.function.value == 'delay') {
                js += handleDelay(element);
            } else if (element.stat.function.value == 'event') {
                if (element.stat.function_param.selector.type == '.') {
                    js += addTabulations(handleLoopFunction(element), 1);
                } else {
                    js += addTabulations(handleFunction(element), 1);
                }
            }
        }
    });
    js += `}\n`;
    return js;
}

function handleArrowFunctionConditional(arrow) {
    let js = ``;
    selector = arrow.selector;
    if (selector.type == '#') {
        js += ` getComputedStyle(${handleSelectorSimple(selector)}).getPropertyValue('${toCSSProp(arrow.javaScriptStyleElement.value)}') `;
    } else if (selector.type == ".") {
        js += ` getComputedStyle(${handleSelectorSimple(selector)})[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.javaScriptStyleElement.value)}') `;
    } else {
        js += ` getComputedStyle(${handleSelectorSimple(selector)})[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.javaScriptStyleElement.value)}') `;
    }
    return js;
}

function handleDelay(stat) {
    let js = '';
    js += `setTimeout(() => {\n`;
    stat.stat.statements.forEach(element => {
        if (element.type == 'selector_block') {
            js += addTabulations(handleSelectorBlockFunction(element.stat), 1);
        }
    });
    if (stat.stat.function_param.unit.value == 's') {
        js += `}, ${stat.stat.function_param.number.value* 1000} );\n`;
    } else if (stat.stat.function_param.unit.value == 'ms') {
        js += `}, ${stat.stat.function_param.number.value});\n`;
    }
    return js;
}

function handleTunnel(stat) {
    let js = "";
    stat.stat.relative_proprety.forEach(element => {
        let rand = uniqueid();
        js += ` var observer${rand} = new MutationObserver(function(mutations) {\n\tmutations.forEach(function(mutation) {\n\t\tif (mutation.attributeName === 'style') {\n`;
        js += `\t\t\tdocument.querySelector('${stat.stat.selector2.type}${removeWhiteSpace(stat.stat.selector2.name)}').style.${element.relative_proprety.value} = calc(getComputedStyle(document.querySelector('${stat.stat.selector1.type}${stat.stat.selector2.name}')).getPropertyValue('${toCSSProp(element.relative_proprety.value)}') , '${element.coe.value}' , '*');\n`; 
        js += `\t\t}\n\t});\n});\nvar config${rand} = { attributes: true, attributeFilter: ['style'] };\nobserver${rand}.observe(document.querySelector('${stat.stat.selector1.type}${stat.stat.selector2.name}'), config${rand});\n\n`;
    });
    return js;
}

function handleSelector(selector) {
    let js = ``;
    if (selector.type == 'multi_selector') {
        js += handleMultiSelector(selector);
    } else {
        if (selector.type == '#') {
            js += handleSelectorSimple(selector);
        } else if (selector.type == ".") {
            if (selector.indices[0] !== undefined) {
                js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name)}')[${selector.indices[0]}]`;
            } else {
                return 'handleLoop';
                // js += `document.querySelectorAll('${selector.type}${removeWhiteSpace(selector.name)}')[0]`;
            }
        } else if (selector.type == '') {
            if (selector.indices[0] !== undefined) {
                js += `document.querySelectorAll('${removeWhiteSpace(selector.name)}')[${selector.indices[0]}]`;
            } else {
                return 'handleLoop';
                // js += `document.querySelectorAll('${removeWhiteSpace(selector.name.value)}')[0]`;
            }
        }
    }
    
    return js;
}

function handleSelectorBlockWithCSS(stat) {
    let localStat = stat;
    let count = 0;
    let js = ``;
    var css = ``;
    for (let index = localStat.stat.propreties.length - 1; index >= 0; index--) {
        let element = localStat.stat.propreties[index];
        if (element.value.type !== 'arrow_function' && element.value.type !== 'calculation') {
            css += `${localStat.stat.selector.type}${removeWhiteSpace(localStat.stat.selector.name)} {\t    ${toCSSProp(element.property)}: ${handleValueToText(element.value)} }\n`;
            localStat.stat.propreties.splice(index, 1);
        } else {
            count++;
        }
    }
    if (count > 0) {
        js += handleSelectorBlock(localStat);
    }
    return [ css , js ];
}

function handleSelectorBlock(stat) {
    let js = ``;
    if (stat.stat.selector.type == 'multi_selector') {
        js += handleMultiSelector(stat.stat.selector);
    } else {
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
    }
    return js;
}

function handleMultiSelector(stat) {
    let array = [];
    stat.stat.selector.value.forEach(element => {
        var newTree = {
            type: 'selector_block',
            stat: {
                type: 'selector_block',
                selector: {
                    type: element.type,
                    name: element.name,
                    indices: element.indices,
                    attributes: element.attributes,
                    pseudoClasses: element.pseudoClasses
                },
                propreties: stat.stat.propreties
            }
        };
        array.push(newTree);
    });
    console.log(util.inspect(array, {depth: null}));
    return array;
}

function handleMultiSelectorWithCSS(stat) {
    let array = [];
    stat.stat.selector.value.forEach(element => {
        var newTree = {
            type: 'selector_block',
            stat: {
                selector: {
                    type: element.type,
                    name: element.name,
                    indices: element.indices,
                    attributes: element.attributes,
                    pseudoClasses: element.pseudoClasses
                },
                propreties: stat.stat.propreties
            }
        };
        array.push(newTree);
    });
    return JSON.stringify(array);
}

function handleSelectorBlockFunction(stat) {
    // console.log(stat.selector);
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
        js += `getComputedStyle(${handleSelectorSimple(selector)}).getPropertyValue('${toCSSProp(arrow.value.javaScriptStyleElement.value)}');\n`;
    } else if (selector.type == ".") {
        js += `getComputedStyle(${handleSelectorSimple(selector)})[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.value.javaScriptStyleElement.value)}');\n`;
    } else {
        js += `getComputedStyle(${handleSelectorSimple(selector)})[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(arrow.value.javaScriptStyleElement.value)}');\n`;
    }
    return js;
}

function handleCalcArrow(term) {
    let js = ``;
    // console.log(term);
    selector = term.selector;
    if (selector.type == '#') {
        js += `getComputedStyle(${handleSelectorSimple(selector)}).getPropertyValue('${toCSSProp(term.javaScriptStyleElement.value)}')`;
    } else if (selector.type == ".") {
        js += `getComputedStyle(${handleSelectorSimple(selector)})[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(term.javaScriptStyleElement.value)}')`;
    } else {
        js += `getComputedStyle(${handleSelectorSimple(selector)})[${selector.indices.value ? selector.indices.value : 0}]).getPropertyValue('${toCSSProp(term.javaScriptStyleElement.value)}')`;
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
    if (stat.selector.type == 'multi_selector') {
        //nothign
    } else {
        js += `${handleSelectorSimple(stat.selector)}.forEach((element) => {\n`;
        stat.propreties.forEach(element => {
            js += `\telement` + handlePropValue(element);
        });
        js += `});\n`;
    }
    return js;
}
// handleStatement function for error handling.
function handleStatement(stat, handler, errorMessage) {
    try {
        return handler(stat);
    } catch (error) {
        console.log(chalk.redBright.bold(`\n* Error in ${errorMessage}: ${error} near code : ${error.stack}`));
    }
}
function handleStatementScan(stat, handler, errorMessage) {
    try {
        return handler(stat);
    } catch (error) {
        return 1;
    }
}

module.exports = {
    handleArrowFunction,
    handleCalcArrow,
    handleArrowFunction,
    handleCalculation,
    handleConditional,
    handleDefaultSelector,
    handleDelay,
    handleFunction,
    handleLoop,
    handleLoopFunction,
    handlePseudoClasses,
    handlePseudoClassesLoop,
    handleSelectorBlock,
    handleSelectorBlockFunction,
    handleSelectorSimple,
    handleStatement,
    handleTunnel,
    handleHover,
    handleHoverLoop,
    handleSelectorBlockWithCSS,
    handleStatementScan,
    handleMultiSelector,
    handleMultiSelectorWithCSS
};