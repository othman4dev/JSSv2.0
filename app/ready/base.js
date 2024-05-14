const calc = (term1, term2, operator) => {
    const [term1Value, term1Unit = ''] = term1.match(/(\d+)(\D*)/).slice(1);
    const [term2Value, term2Unit = ''] = term2.match(/(\d+)(\D*)/).slice(1);
    const operations = {
        '+': (a, b) => a + b,
        '-': (a, b) => a - b,
        '*': (a, b) => a * b,
        '/': (a, b) => a / b,
        '%': (a, b) => a % b,
    };
    const result = operations[operator](+term1Value, +term2Value) + (term1Unit === term2Unit || term2Unit === '' ? term1Unit : term2Unit);
    return result;
};

const applyStyles = (element, styles) => Object.assign(element.style, styles);

const compare = (a, comparison, b) => {
    const unitToPixels = {
        "px": 1, "pt": 1.25, "pc": 15, "mm": 3.779528, "cm": 37.79528, "in": 96,
        "em": 16, "rem": 16, "ex": 8, "ch": 8, "vw": window.innerWidth / 100,
        "vh": window.innerHeight / 100, "vmin": Math.min(window.innerWidth, window.innerHeight) / 100,
        "vmax": Math.max(window.innerWidth, window.innerHeight) / 100, "%": 16 / 100,
    };
    let [valueA, unitA] = a.match(/(\d+)(\D*)/).slice(1);
    let [valueB, unitB] = b.match(/(\d+)(\D*)/).slice(1);
    valueA *= unitToPixels[unitA] || 1;
    valueB *= unitToPixels[unitB] || 1;
    const comparisons = {
        '==': (a, b) => a == b,
        '!=': (a, b) => a != b,
        '>': (a, b) => a > b,
        '<': (a, b) => a < b,
        '>=': (a, b) => a >= b,
        '<=': (a, b) => a <= b,
    };
    if (!comparisons[comparison]) throw new Error(`Invalid comparison operator: ${comparison}`);
    return comparisons[comparison](valueA, valueB);
};