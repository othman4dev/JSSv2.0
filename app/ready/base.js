function calc(term1, term2, operator) {
    let term1Value = parseFloat(term1.match(/\d+/g)[0]);
    let term1Unit = (term1.match(/[a-zA-Z%]+/g) || [''])[0];
    let term2Value = parseFloat(term2.match(/\d+/g)[0]);
    let term2Unit = (term2.match(/[a-zA-Z%]+/g) || [''])[0];
    let result = 0;

    switch (operator) {
        case '+':
            result = term1Value + term2Value;
            break;
        case '-':
            result = term1Value - term2Value;
            break;
        case '*':
            result = term1Value * term2Value;
            break;
        case '/':
            result = term1Value / term2Value;
            break;
        case '%':
            result = term1Value % term2Value;
            break;
    }

    if (term1Unit === term2Unit || term2Unit === '') {
        result += term1Unit;
    } else if (term1Unit === '' || term1Unit !== term2Unit) {
        result += term2Unit;
    }

    return result;
}
function applyStyles(element, styles) {
    for (let prop in styles) {
        element.style[prop] = styles[prop];
    }
}
function compare( a , comparison, b ) {
    const unitToPixels = {
        "px": 1,
        "pt": 1.25,
        "pc": 15,
        "mm": 3.779528,
        "cm": 37.79528,
        "in": 96,
        "em": 16,
        "rem": 16,
        "ex": 8,
        "ch": 8,
        "vw": window.innerWidth / 100,
        "vh": window.innerHeight / 100,
        "vmin": Math.min(window.innerWidth, window.innerHeight) / 100,
        "vmax": Math.max(window.innerWidth, window.innerHeight) / 100,
        "%": 16 / 100,
    };

    let [valueA, unitA] = a.match(/(\d+)(\D*)/).slice(1);
    let [valueB, unitB] = b.match(/(\d+)(\D*)/).slice(1);

    valueA *= unitToPixels[unitA] || 1;
    valueB *= unitToPixels[unitB] || 1;

    switch (comparison) {
        case '==':
            return valueA == valueB;
        case '!=':
            return valueA != valueB;
        case '>':
            return valueA > valueB;
        case '<':
            return valueA < valueB;
        case '>=':
            return valueA >= valueB;
        case '<=':
            return valueA <= valueB;
        default:
            throw new Error(`Invalid comparison operator: ${comparison}`);
    }
}