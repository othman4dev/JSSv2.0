
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
var styleStoreycxurk3y3 = null;
document.querySelector('#btnStart').addEventListener('mouseover', (event) => {
	styleStoreycxurk3y3 = window.getComputedStyle(document.querySelector('#btnStart'));
	event.target.style.transform = 'translateY(-2px)';
	event.target.style.test = '15';
});
document.querySelector('#btnStart').addEventListener('mouseout', (event) => {
	applyStyles(event.target, styleStoreycxurk3y3);
});
var styleStorewst3lce0l = null;
document.querySelectorAll('.btnStart').forEach((element) => {
	element.addEventListener('mouseover', (event) => {
		styleStorewst3lce0l = window.getComputedStyle(document.querySelector('.btnStart'));
		event.target.style.transform = 'translateY(-2px)';
		event.target.style.test = '15';
	});
	element.addEventListener('mouseout', (event) => {
		applyStyles(event.target, styleStorewst3lce0l);
	});
});
document.querySelectorAll('.modals').forEach((element) => {
	element.addEventListener('click', () => {
document.querySelectorAll('.modal').forEach((element) => {
	element.style.display = 'block';
	element.style.color = 'red';
});
});
});
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
if ( compare( getComputedStyle(document.querySelector('#div')).getPropertyValue('width') , '>',  50 )) {
	document.querySelector('#div1').style.backgroundColor = 'red';
}
document.querySelectorAll('body').forEach((element) => {
	element.style.backgroundColor = 'whitesmoke';
	element.style.width =  calc( `100px` , getComputedStyle(document.querySelector('#div15')).getPropertyValue('height') , '+' );
	element.style.height =  calc( `100` , getComputedStyle(document.querySelector('#div15')).getPropertyValue('font-weight') , '+' );
});

/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */