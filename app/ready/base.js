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