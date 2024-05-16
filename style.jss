header {
    backgroundColor = #000;
    color = #fff;
    display = flex;
    alignItems = center;
    justifyContent = space-between;
    paddingInline = 15px;
}

#div1 {
    height = 100px;
    width = 50px;
    backgroundColor = #0091dc;
}

#div2 {
    backgroundColor = red;
    height = (#div1)->height;
    width = 50px;
}
if ( (#div1)->width >= 50px ) {
    #div2 {
        width = 150px;
    }
}
function delay(5000ms) {
    #div2 {
        width = 15px;
        height = 150px;
    }
    .modal {
        display = block;
        
    }
}
html {
    fontFamily = 'Montserrat' ;
}
body {
    backgroundColor= whitesmoke;
    color = (#div15)->backgroundColor;
}
.header {
    backgroundColor = black;
    color = white;
    display = flex;
    alignItems = center;
    justifyContent = space-between;
    padding = 10px;
    height = 60px;
    marginBottom : 10px;
}
.nav__list {
    display = flex;
    listStyle = none;
    padding = 0;
    gap = 15px;
    paddingInline = 15px;
}
.h11 {
    margin = 0;
    fontWeight = 800;
    marginLeft = 30px;
}
main {
    display = flex;
    alignItems = center;
    justifyContent = center;
    flexDirection = column;
    minHeight = 87vh;
}
a  {
    textDecoration = none;
    color = #fff;
}
modal {
    width = 350px;
    display = flex;
    alignItems = center;
    justifyContent = center;
}
div[2] {
    position = relative;
    height = 100%;
    width = 450px;
    display = none;
    padding = 15px;
    backgroundColor = white;

}
.id[1] {
    color = #555;
    fontSize = 12px;
    position = absolute;
    top = 10px;
    right = 10px;
}
h2 {
    paddingTop = 10px;
    paddingBottom = 10px;
}
p {
    padding = 15px;
}
button[1] {
    backgroundColor = black;
    color = white;
    padding = 5px 10px;
    cursor = pointer;
    fontSize = 17 - 20;
}
#btnStart {
    backgroundColor = black;
    color = white;
    padding = 10px;
    cursor = pointer;
    fontSize = 17px;
    transition = 0.3s;
}
#btnStart:hover {
    transform = translateY(-2px);
    test = 15;
}
.btnStart:hover {
    transform = translateY(-2px);
    test = 15;
}

function event((.modals):click) {
    .modal {
        display = block;
        color = red;
    }
}

function event((#btnStart):click) {
    .modal {
        display = block;
    }
    #btnStart {
        display = none;
    }
}
function event((#btn1):click) {
    .modal {
        display = none;
    }
    .modal2 {
        display = block;
    }
}
function event((#btn2):click) {
    .modal2 {
        display = none;
    }
    .modal3 {
        display = block;
    }
}
function event((#btn3):click) {
    .modal3 {
        display = none;
    }
    .modal4 {
        display = block;
    }
}
function event((#btn4):click) {
    .modal4 {
        display = none;
    }
    .modal5 {
        display = block;
    }
}
if ((#div)->width > 50) {
    #div1 {
        backgroundColor = red;
    }
}
#div1:::#div2 {
    width(1);
    height(1.5);
}
body {
    backgroundColor = whitesmoke;
    width = 100px + (#div15)->height;
    height = 100 + (#div15)->fontWeight;
}
function event((.btn):click) {
    if ((#modal)->display == block) {
        #modal {
            display = none;
        }
    }
}
if ((#modal)->color == white) {
    function event((#btn):click) {
        #body {
            backgroundColor = whitesmoke;
            width = 100px + (#div15)->height;
            height = 100 + (#div15)->fontWeight;
        }
    }
}