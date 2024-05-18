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
document.querySelector('#div2').style.height = getComputedStyle(document.querySelector('#div1')).getPropertyValue('height');
if ( compare( getComputedStyle(document.querySelector('#div1')).getPropertyValue('width') , '>=',  '50px ' )) {
	document.querySelector('#div2').style.width = '150px';
}
setTimeout(() => {
	document.querySelector('#div2').style.width = '15px';
	document.querySelector('#div2').style.height = '150px';
		document.querySelectorAll('.modal').forEach((element) => {
		element.style.display = 'block';
	});
	}, 5000);
document.querySelectorAll('body').forEach((element) => {
	element.style.color = getComputedStyle(document.querySelector('#div15')).getPropertyValue('background-color');
});
document.querySelectorAll('button')[1].style.fontSize =  calc( `17` , ` 20` , '-' );
document.querySelector('#btnStart').addEventListener('click', () => {
document.querySelectorAll('.modal').forEach((element) => {
	element.style.display = 'block';
});
document.querySelector('#btnStart').style.display = 'none';
});
document.querySelector('#btn1').addEventListener('click', () => {
document.querySelectorAll('.modal').forEach((element) => {
	element.style.display = 'none';
});
document.querySelectorAll('.modal2').forEach((element) => {
	element.style.display = 'block';
});
});
document.querySelector('#btn2').addEventListener('click', () => {
document.querySelectorAll('.modal2').forEach((element) => {
	element.style.display = 'none';
});
document.querySelectorAll('.modal3').forEach((element) => {
	element.style.display = 'block';
});
});
document.querySelector('#btn3').addEventListener('click', () => {
document.querySelectorAll('.modal3').forEach((element) => {
	element.style.display = 'none';
});
document.querySelectorAll('.modal4').forEach((element) => {
	element.style.display = 'block';
});
});
document.querySelector('#btn4').addEventListener('click', () => {
document.querySelectorAll('.modal4').forEach((element) => {
	element.style.display = 'none';
});
document.querySelectorAll('.modal5').forEach((element) => {
	element.style.display = 'block';
});
});
if ( compare( getComputedStyle(document.querySelector('#div')).getPropertyValue('width') , '>',  '50' )) {
	document.querySelector('#div1').style.backgroundColor = 'red';
}
 var observerbftu9ula0 = new MutationObserver(function(mutations) {
	mutations.forEach(function(mutation) {
		if (mutation.attributeName === 'style') {
			document.querySelector('#div2').style.width = calc(getComputedStyle(document.querySelector('#div2 ')).getPropertyValue('width') , '1' , '*');
		}
	});
});
var configbftu9ula0 = { attributes: true, attributeFilter: ['style'] };
observerbftu9ula0.observe(document.querySelector('#div2 '), configbftu9ula0);

 var observer47mac4hgq = new MutationObserver(function(mutations) {
	mutations.forEach(function(mutation) {
		if (mutation.attributeName === 'style') {
			document.querySelector('#div2').style.height = calc(getComputedStyle(document.querySelector('#div2 ')).getPropertyValue('height') , '1.5' , '*');
		}
	});
});
var config47mac4hgq = { attributes: true, attributeFilter: ['style'] };
observer47mac4hgq.observe(document.querySelector('#div2 '), config47mac4hgq);

document.querySelectorAll('body').forEach((element) => {
	element.style.width =  calc( `100px` , getComputedStyle(document.querySelector('#div15')).getPropertyValue('height') , '+' );
	element.style.height =  calc( `100` , getComputedStyle(document.querySelector('#div15')).getPropertyValue('font-weight') , '+' );
});
document.querySelectorAll('.btn').forEach((element) => {
	element.addEventListener('click', () => {
		if ( compare( getComputedStyle(document.querySelector('#modal')).getPropertyValue('display') , '==',  'block' )) {
			document.querySelector('#modal').style.display = 'none';
		}
		});
});
if ( compare( getComputedStyle(document.querySelector('#modal')).getPropertyValue('color') , '==',  'white' )) {
	document.querySelector('#btn').addEventListener('click', () => {
	document.querySelector('#body').style.backgroundColor = 'whitesmoke';
	document.querySelector('#body').style.width =  calc( `100px` , getComputedStyle(document.querySelector('#div15')).getPropertyValue('height') , '+' );
	document.querySelector('#body').style.height =  calc( `100` , getComputedStyle(document.querySelector('#div15')).getPropertyValue('font-weight') , '+' );
	});
	}

/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */