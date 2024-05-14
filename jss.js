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
document.querySelectorAll('header').forEach((element) => {
	element.style.backgroundColor = '#000';
	element.style.color = '#fff';
	element.style.display = 'flex';
	element.style.alignItems = 'center';
	element.style.justifyContent = 'space-between';
	element.style.paddingInline = '15px';
});
document.querySelector('#div1').style.height = '100px';
document.querySelector('#div1').style.width = '50px';
document.querySelector('#div1').style.backgroundColor = '#0091dc';
document.querySelector('#div2').style.backgroundColor = 'red';
document.querySelector('#div2').style.height = getComputedStyle(document.querySelector('#div1')).getPropertyValue('height');
document.querySelector('#div2').style.width = '50px';
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
document.querySelectorAll('html').forEach((element) => {
	element.style.fontFamily = 'Montserrat';
});
document.querySelectorAll('body').forEach((element) => {
	element.style.backgroundColor = 'whitesmoke';
	element.style.color = getComputedStyle(document.querySelector('#div15')).getPropertyValue('background-color');
});
document.querySelectorAll('.header').forEach((element) => {
	element.style.backgroundColor = 'black';
	element.style.color = 'white';
	element.style.display = 'flex';
	element.style.alignItems = 'center';
	element.style.justifyContent = 'space-between';
	element.style.padding = '10px';
	element.style.height = '60px';
	element.style.marginBottom = '10px';
});
document.querySelectorAll('.nav__list').forEach((element) => {
	element.style.display = 'flex';
	element.style.listStyle = 'none';
	element.style.padding = '0';
	element.style.gap = '15px';
	element.style.paddingInline = '15px';
});
document.querySelectorAll('.h11').forEach((element) => {
	element.style.margin = '0';
	element.style.fontWeight = '800';
	element.style.marginLeft = '30px';
});
document.querySelectorAll('main').forEach((element) => {
	element.style.display = 'flex';
	element.style.alignItems = 'center';
	element.style.justifyContent = 'center';
	element.style.flexDirection = 'column';
	element.style.minHeight = '87vh';
});
document.querySelectorAll('a').forEach((element) => {
	element.style.textDecoration = 'none';
	element.style.color = '#fff';
});
document.querySelectorAll('modal').forEach((element) => {
	element.style.width = '350px';
	element.style.display = 'flex';
	element.style.alignItems = 'center';
	element.style.justifyContent = 'center';
});
document.querySelectorAll('div')[2].style.position = 'relative';
document.querySelectorAll('div')[2].style.height = '100%';
document.querySelectorAll('div')[2].style.width = '450px';
document.querySelectorAll('div')[2].style.display = 'none';
document.querySelectorAll('div')[2].style.padding = '15px';
document.querySelectorAll('div')[2].style.backgroundColor = 'white';
document.querySelectorAll('.id')[1].style.color = '#555';
document.querySelectorAll('.id')[1].style.fontSize = '12px';
document.querySelectorAll('.id')[1].style.position = 'absolute';
document.querySelectorAll('.id')[1].style.top = '10px';
document.querySelectorAll('.id')[1].style.right = '10px';
document.querySelectorAll('h2').forEach((element) => {
	element.style.paddingTop = '10px';
	element.style.paddingBottom = '10px';
});
document.querySelectorAll('p').forEach((element) => {
	element.style.padding = '15px';
});
document.querySelectorAll('button')[1].style.backgroundColor = 'black';
document.querySelectorAll('button')[1].style.color = 'white';
document.querySelectorAll('button')[1].style.padding = '5px 10px';
document.querySelectorAll('button')[1].style.cursor = 'pointer';
document.querySelectorAll('button')[1].style.fontSize =  calc( `17` , ` 20` , '-' );
document.querySelector('#btnStart').style.backgroundColor = 'black';
document.querySelector('#btnStart').style.color = 'white';
document.querySelector('#btnStart').style.padding = '10px';
document.querySelector('#btnStart').style.cursor = 'pointer';
document.querySelector('#btnStart').style.fontSize = '17px';
document.querySelector('#btnStart').style.transition = '0.3s';
var styleStorek2tp63312 = null;
document.querySelector('#btnStart').addEventListener('mouseover', (event) => {
	styleStorek2tp63312 = window.getComputedStyle(document.querySelector('#btnStart'));
	event.target.style.transform = 'translateY(-2px)';
	event.target.style.test = '15';
});
document.querySelector('#btnStart').addEventListener('mouseout', (event) => {
	applyStyles(event.target, styleStorek2tp63312);
});
var styleStorec52nfkc1w = null;
document.querySelectorAll('.btnStart').forEach((element) => {
	element.addEventListener('mouseover', (event) => {
		styleStorec52nfkc1w = window.getComputedStyle(document.querySelector('.btnStart'));
		event.target.style.transform = 'translateY(-2px)';
		event.target.style.test = '15';
	});
	element.addEventListener('mouseout', (event) => {
		applyStyles(event.target, styleStorec52nfkc1w);
	});
});
if ( compare( getComputedStyle(document.querySelector('#div')).getPropertyValue('width') , '>',  '50' )) {
	document.querySelector('#div1').style.backgroundColor = 'red';
}
 var observer9naws8xe1 = new MutationObserver(function(mutations) {
	mutations.forEach(function(mutation) {
		if (mutation.attributeName === 'style') {
			document.querySelector('#div2').style.width = calc(getComputedStyle(document.querySelector('#div2 ')).getPropertyValue('width') , '1' , '*');
		}
	});
});
var config9naws8xe1 = { attributes: true, attributeFilter: ['style'] };
observer9naws8xe1.observe(document.querySelector('#div2 '), config9naws8xe1);

 var observerqqwg19p5f = new MutationObserver(function(mutations) {
	mutations.forEach(function(mutation) {
		if (mutation.attributeName === 'style') {
			document.querySelector('#div2').style.height = calc(getComputedStyle(document.querySelector('#div2 ')).getPropertyValue('height') , '1.5' , '*');
		}
	});
});
var configqqwg19p5f = { attributes: true, attributeFilter: ['style'] };
observerqqwg19p5f.observe(document.querySelector('#div2 '), configqqwg19p5f);

document.querySelectorAll('body').forEach((element) => {
	element.style.backgroundColor = 'whitesmoke';
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
}

/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */