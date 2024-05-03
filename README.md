# JSS: JavaScript Styles Framework

![JSS Logo](./images/JSS.png)

JSS, short for JavaScript Styles, is a powerful framework that introduces its own syntax known as JSS, a blend of JavaScript and CSS. Let's explore the key differences between these two languages.

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

As evident, we replace CSS style properties with JavaScript-style properties, utilizing the "=" operator for assignment instead of ":".

We bring numerous features tailored to aid in DOM manipulation, leveraging JavaScript's prowess in this domain.

## Reference Properties

Elements can clone any other element's property value to their style:

```css
#div1 {
    backgroundColor = (#div2)->backgroundColor;
    height = (#div3)->width;
}
```

In this example, #div1 adopts #div2's backgroundColor and #div3's width as its own height.

## Indexing

You can add an index like in JavaScript to any multiple selector like classes and tags

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

As in most of programming languages the index start at 0.

## Events

Our framework introduces a cool feature enabling event handling directly in JSS syntax:

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

With this, you gain full control over JavaScript events, allowing you to write event-based styles without JavaScript function dependencies.

## Conditionals

Similar to JavaScript, JSS supports conditionals, crucial for both DOM manipulation and logical operations:

```css
if ((#div)->width >= 100px ) {
    .modal {
        display = none;
    }
}
```

## Functions

JSS functions facilitate complex DOM modifications with ease, triggered by events or conditions:

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

## Combining Functions with Conditionals

A complete JSS function example demonstrating event-based conditional actions:

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

We're developing functionality for streamlined addition of complex event handlers to elements, potentially controlling other elements:

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

## The "Tunnel" Feature

Introducing the groundbreaking "Tunnel" feature, allowing elements to share or proportionally relate values for one or more properties:

```css
#div2:::#div1 {
    /* The width will remain the same */
    width(1);
    /* The height will be increased by 50% */
    height(1.5);
    /* The backgroundColor will be the inverse of the current color */
    backgroundColor(invert());
}
```

The "Tunnel" feature ensures synchronized properties across elements, albeit being memory-intensive currently, we're actively optimizing it for improved performance.

---

This README provides a comprehensive overview of JSS, empowering you with a blend of JavaScript flexibility and CSS simplicity. Explore the possibilities, and let JSS revolutionize your styling experience!

### [NOTE ! :]() This framework is under continous development for the moment and it is not very suitable for production.