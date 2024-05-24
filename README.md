# JSS: JavaScript Styles Framework

<table>
<tr>
<td>
<img src="./images/JSS.png" alt="JSS Logo" width="350px"/>
</td>
<td>
JSS, short for JavaScript Styles, is a powerful framework that introduces its own syntax known as JSS, a blend of JavaScript and CSS.
</td>
</tr>
</table>

# Get Started

Clone the framework repository using:

```bash 
    git clone https://github.com/othman4dev/JSSv2.0.git
```

Navigate to the framework directory, where you will find a file called style.jss. This is your JSS file where you can write code following our syntax.
<br>
<i>You can learn JSS at [our Website for documentation](https://jssdev.tech)</i>

After writing your JSS code, it’s time to transpile it to JavaScript and/or CSS.

#### First, install the necessary packages: :

```bash
    npm install
```


#### To transpile to both JavaScript and CSS:

```bash
    npm run jss
```
This command generates two files:
- <b>jss.js :</b> Contains the JavaScript code for features that cannot be achieved with CSS alone.
- <b>css.js :</b> Contains simple styles that do not require JavaScript.

Link these files to your document to see the results.

### Additional Commands
To explore more commands for customizing your output, run:

```bash
    npm run jss:help
```


### Now Let's Explore The Key Differences Between JSS and CSS.

### In CSS
```css
#div {
    background-color: #fff;
    color: white;
    z-index: 1;
}
```

### In JSS
```css
#div {
    backgroundColor = #fff;
    color = white;
    zIndex = 1;
}
```

In JSS, CSS style properties are replaced with JavaScript-style properties, using the = operator for assignment instead of :.     

We bring numerous features tailored to aid in DOM manipulation, leveraging JavaScript's prowess in this domain.

## New JavaScript propreties

We allow use of numerous new propreties like

```css
    form {
        innerHTML = `<input type="text" name="email" />`;
    }
    .checkout-btn:click {
        textContent = `Verifying`;
    }
    #textaria {
        innerText = `Write description here`;
    }
    .btn:hover {
        outerHTML = `<button id='unallow'>unallowed</button>`;
    }
```

Properties like innerHTML, innerText, outerHTML, and textContent can be used directly within your CSS.

## Reference Properties

Elements can clone any other element's property value:

```css
#div1 {
    backgroundColor = (#div2)->backgroundColor;
    height = (#div3)->width;
}
```

In this example, #div1 adopts #div2's backgroundColor and #div3's width as its own height.

## Indexing

You can add an index to any multiple selector like classes and tags:

```css
/*Select the first element*/
.dropdown[0] {
    display = flex;
    opacity = 1;
}
/*Select the third element*/
.dropdown[2] {
    display = none;
    opacity = 0;
}
```

As in most programming languages, indexing starts at 0.

## Events

JSS introduces event handling directly within the syntax:

```css
.header:click {
    backgroundColor = green;
    fontFamily = 'Arial';
}

.notification:mouseover {
    opacity = 1;
}

.notification:mouseout {
    opacity = 0.5;
}
```

This allows you to write event-based styles without relying on JavaScript functions.

## Conditionals

JSS supports conditionals for both DOM manipulation and logical operations:

```css
if ((#div)->width >= 100px ) {
    .modal {
        display = none;
    }
}
```

## Functions

JSS functions enable complex DOM modifications triggered by events or conditions:
```css
function event((#div):click) {
    #div15 {
        display = flex;
        borderRadius = 50px;
    }
}
function delay(5s) {
    .ads[0] {
        display = block;
    }
}
```

This feature eliminates the need for JavaScript functions to handle modals or animations.
Delay functions allow you to set time related operations from JSS.

## Combining Functions with Conditionals

A complete example of a JSS function with event-based conditional actions:

```css
function event((#btn):click) {
    if ((#modal)->display = block) {
        #modal {
            display = none;
        }
    } else {
        #modal {
            display = flex;
        }
    }
}
```

## Event Handling Functionality

We are developing functionality for streamlined addition of complex event handlers:

```css
function event((#id6):click) {
    #id7 {
        backgroundColor = white;
        transition = 1s;
    }
    #id6 {
        backgroundColor = red;
    }
}
```

## Variables and Variables Blocks.

Assign variables and variable blocks easily with JSS:

```css
    --primaryColor = #0091dc;
    --toCenterFlex = {
        display = flex;
        alignItems = center;
        justifyContent = center;
    }
    --initialBG = (#modal1)->backgroundColor;
    header {
        --toCenterFlex;
        backgroundColor = --primaryColor;
    }
```

Re-assigning a value to an existing variable will overwrite it.

## Calculations

Calculations are simplified, allowing you to compute style values of elements:

```css
    .side-bar {
        width = (.main)->width / 3;
        height = 100vh - 60px;
    }
```

If the unit is undefined, the framework returns the first value without applying any calculations.

## The "Tunnel" Feature

The "Tunnel" feature allows elements to share or proportionally relate values:

```css
#div2:::#div1 {
    /* The width will remain the same */
    width(1);
    /* The height will be increased by 150% */
    height(1.5);
}
```

The "Tunnel" feature ensures synchronized properties across elements. Although memory-intensive, we are actively optimizing it for better performance.

---

This README provides a comprehensive overview of JSS, empowering you with a blend of JavaScript flexibility and CSS simplicity. Explore the possibilities, and let JSS revolutionize your styling experience!

### [NOTE ! :]() This framework is under continous development for the moment and it is not very suitable for production.

## Otman Kharbouch 
Email : otmankharbouch813@gmail.com

Contact me if you care to collaborate on this project.

We still have to build:
- A website with a good documentation of this framework using this framework.
- A Visual Code Studio extention and plugins (language support, syntax highlighter, autocomplete).