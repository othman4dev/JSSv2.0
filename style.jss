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
function delay(2s) {
    #div2 {
        width = 15px;
        height = 150px;
    }
    .modal {
        display = block;
    }
}