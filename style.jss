
html {
    backgroundColor = #eee;
    fontFamily = Montserrat;
}
header {
    backgroundColor = #000;
    color = #fff;
    display = flex;
    alignItems = center;
    justifyContent = space-between;
    height = 60px;
    paddingInline = 15px;
    boxShadow = '0 0 6px 1px black';
}
.first-half,
.second-half {
    display = flex;
    alignItems = center;
    gap = 10px;
    flexGrow = 0.5;
}
.first-half {
    justifyContent = flex-start;
}
.second-half {
    justifyContent = flex-end;
    gap = 15px;
}
.middle-half {
    position = relative;
    width = fit-content;
}
.header-logo {
    height = 40px;
    maxWidth = 43px;
    gap = 10px;
    flexGrow = 0.5;
}
.header-items {
    backgroundColor = transparent;
    color = #fff;
    fontSize = 12px;
    border = none;
    cursor = pointer;
    display = flex;
    alignItems = center;
    gap = 7px;
}
i {
    fontSize = 20px;
}
.header-item-text {
    maxWidth = 0px;
    overflow = hidden;
    transition = 0.3s;
}
function event((#header-item1):mouseover) {
    #header-item-text1 {
        maxWidth = 100px;
    }
}
function event((#header-item1):mouseout) {
    #header-item-text1 {
        maxWidth = 0px;
    }
}
function event((#header-item2):mouseover) {
    #header-item-text2 {
        maxWidth = 100px;
    }
}
function event((#header-item2):mouseout) {
    #header-item-text2 {
        maxWidth = 0px;
    }
}
function event((#header-item3):mouseover) {
    #header-item-text3 {
        maxWidth = 100px;
    }
}
function event((#header-item3):mouseout) {
    #header-item-text3 {
        maxWidth = 0px;
    }
}
function event((#header-item4):mouseover) {
    #header-item-text4 {
        maxWidth = 100px;
    }
}
function event((#header-item4):mouseout) {
    #header-item-text4 {
        maxWidth = 0px;
    }
}
.title-desc {
    display = flex;
    flexDirection = column;
    gap = 0px;
}
#info {
    fontSize = 9px;
    marginTop = -3px;
}
.search-inp {
    height = 35px;
    fontSize = 11px;
    width = 35px;
    paddingLeft = 35px;
    outline = none;
    transition = 0.4s;
    borderRadius = 50%;
    border = none;
}
.search-btn {
    position = absolute;
    top = 50%;
    left = 50%;
    transform = translate(-50%,-50%);
    color = #000;
    backgroundColor = transparent;
    width = 40px;
    height = 40px;
    display = flex;
    alignItems = center;
    justifyContent = center;
    cursor = pointer;
}
function event((#searchContainer):click) {
    .search-inp {
        width = 300px;
        paddingLeft = 15px;
        borderRadius = 0%;
    }
    .search-btn {
        right = 0%;
        left = unset;
        transform = translate(0%,-50%);
    }
}
function event((#searchInput):blur) {
    .search-inp {
        width = 35px;
        paddingLeft = 35px;
        borderRadius = 50%;
    }
    .search-btn {
        right = unset;
        left = 50%;
        transform = translate(-50%,-50%);
    }
}
.hero-page {
    minHeight = calc( 100vh - 60px );
    display = flex;
    alignItems = center;
    justifyContent = space-evenly;
    padding = 25px;
}
.big-title {
    display = flex;
    alignItems = center;
    justifyContent = flex-start;
    flexGrow = 1;
}
.hidden-word {
    overflow = hidden;
    maxWidth = 0px;
    transition = 0.4s;
    display = inline-block;
}
function event((#big-hero-title):mouseover) {
    .hidden-word {
        maxWidth = 200px;
        marginRight = 5px;
    }
}
function event((#big-hero-title):mouseout) {
    .hidden-word {
        maxWidth = 0px;
        marginRight = 0px;
    }
}
#big-hero-title {
    fontSize = 30px;
    cursor = pointer;
}
.hero-logos {
    width = 300px;
}
.hero-logo {
    width = 0px;
}
.first-part {
    display = flex;
    alignItems = center;
    justifyContent = center;
    gap = 25px;
}
.second-part {
    flexGrow = 1;
    padding = 10px;
    color = #333;
    fontSize = 15px;
    maxWidth = 650px;
}
.intro-title {
    fontSize = 150px;
}
.intro {
    paddingLeft = 15px;
    paddingTop = 0;
    padding = 40px;
    textIndent = 15px;
    fontSize = 16px;
}
.get-started {
    backgroundColor = #333;
    color = #fff;
    border = none;
    height = 45px;
    width = 130px;
    fontSize = 15px;
    paddingInline = 10px;
    display = flex;
    alignItems = center;
    justifyContent = center;
    borderRadius = 500px;
    cursor = pointer;
}
.btn-wrapper {
    display = flex;
    alignItems = center;
    justifyContent = flex-end;
    gap = 25px;
    paddingRight = 90px;
}
.learn-more {
    backgroundColor = #333;
    color = #fff;
    border = none;
    height = 45px;
    width = 130px;
    fontSize = 15px;
    paddingInline = 10px;
    display = flex;
    alignItems = center;
    justifyContent = center;
    borderRadius = 500px;
    cursor = pointer;
}
.get-started:hover {
    backgroundColor = #000;
    transition = 0.2s;
}
.learn-more:hover {
    boxShadow = '0 2.5px 0px 2px #000';
    transform = translateY(-2.5px);
    transition = 0.2s;
}
#modalStart {
    backgroundColor = #fff;
    borderRadius = 15px;
    width = 80%;
    position = fixed;
    top = 50%;
    left = 50%;
    transform = translate(-50%, -50%);
    zIndex = 5;
    paddingBottom = 30px;
    boxShadow = '0 0 8px 1px #00000020';
    padding = 15px;
    display = none;
    transition = 0.2s;
}
.choices {
    display = flex;
    alignItems = center;
    justifyContent = space-evenly;
    gap = 15px;
}
.choice1,
.choice2 {
    flexGrow = 1;
    width = 50%;
    height = 240px;
    display = flex;
    flexDirection = column;
    alignItems = center;
    justifyContent = space-between;
}
.modal-header {
    width = 100%;
    display = flex;
    alignItems = center;
    justifyContent = center;
    marginBottom = 20px;
    position = relative;
}
.modal-title {
    textAlign = center;
}
.modal-content {
    height = 240px;
    display = contents;
}
.modal-title {
    margin = 15px;
}
.modal-desc {
    padding = 15px;
}
.modal-btn {
    backgroundColor = #333;
    color = #fff;
    border = none;
    height = 45px;
    width = 100%;
    fontSize = 15px;
    paddingInline = 10px;
    display = flex;
    alignItems = center;
    justifyContent = center;
    borderRadius = 500px;
    cursor = pointer;
}
.modal-btn:hover {
    backgroundColor = #000;
    transition = 0.2s;
}
function event((#getStarted):click) {
    main {
        filter = blur(5px);
        transition = 0.4s;
    }
    #modalStart {
        display = block;
    }
}
function event((#closeModal):click) {
    #modalStart {
        display = none;
    }
    main {
        filter = none;
        transition = 0.4s;
    }
}
#closeModal {
    position = absolute;
    top = 10px;
    right = 10px;
    fontSize = 30px;
    color = #000;
    cursor = pointer;
}
.hero2-title {
    fontSize = 40px;
    color = #333;
    paddingInline = 40px;
    padding = 20px;
}
.intro2 {
    color = #333;
    paddingInline = 40px;
    padding = 20px;
    textIndent = 15px;
    maxWidth = 70%;
}
.part2-body {
    display = flex;
    alignItems = center;
    justifyContent = space-evenly;
    gap = 10px;
    padding = 25px;
}
.code-img {
    minWidth = 350px;
    height = 240px;
    borderRadius = 5px;
}
.part2-header {
    fontSize = 20px;
    color = #333;
    width = 100%;
    textIndent = 15px;
}

.step {
    flexGrow = 1;
    display = flex;
    flexDirection = column;
    alignItems = center;
}
.undertitle {
    fontSize = 12px;
    color = #333;
    marginTop = -20px;
    marginBottom = 15px;
}
.section- {
    marginBottom = 50px;
}
.img-title {
    fontSize = 12px;
    color = #333;
    textAlign = center;
    marginTop = 5px;
    maxWidth = 70%;
}
.line {
    width = 90%;
    backgroundColor = #eee;
    boxShadow = '0 0 5px 1px #00000010';
    display = flex;
    alignItems = center;
    justifyContent = space-between;
    borderRadius = 10px;
    padding = 15px;
    marginBottom = 7px;
}
.step2 {
    flexGrow = 1;
    display = flex;
    flexDirection = column;
    alignItems = center;
    width = 50%;
}
.flex {
    display = flex;
    alignItems = center;
    justifyContent = space-between;
    gap = 25px;
}
.illu2 {
    width = 200px;
}
.img-wrapper {
    display = flex;
    alignItems = center;
    justifyContent = center;
    flexGrow = 1;
    width = 30%;
}
.installation {
    padding = 40px;
}
.chapter {
    padding = 15px;
}
.installation-title {
    fontSize = 40px;
    color = #333;
    paddingInline = 40px;
    marginBottom = 20px;
}
.chapter-title {
    fontSize = 30px;
    color = #333;
    paddingInline = 40px;
    marginBottom = 20px;
}
.code {
    backgroundColor = #1e1e1e;
    color = #fff;
    position = relative;
    borderRadius = 7px;
    min-height = 65px;
    paddingLeft = 30px;
    paddingTop = 34px;
    padding = 15px;
    display = flex;
    alignItems = center;
    margin = 15px;
    position = relative;
}
.circles {
    position = absolute;
    top = 10px;
    left = 10px;
    display = flex;
    alignItems = center;
    gap = 7px;
}
.circle {
    height = 15px;
    width = 15px;
    borderRadius = 50%;
}
.circle1 {
    backgroundColor = #ff5f56;
}
.circle2 {
    backgroundColor = #ffbd2e;
}
.circle3 {
    backgroundColor = #27c93f;
}
li {
    marginBottom = 15px;
    marginTop = 15px;
    marginLeft = 25px;
}
ul {
    marginLeft = 15px;
}
.code-copy {
    position = absolute;
    right = 10px;
    top = 10px;
    cursor = pointer;
    backgroundColor = #ffffff09;
    color = #888;
    height = 25px;
    width = 25px;
    display = flex;
    alignItems = center;
    justifyContent = center;
    borderRadius = 5px;
    border = none;
}
.code-copy:hover {
    backgroundColor = #ffffff19;
    color = #aaa;
    transition = 0.2s;
}
function delay(1s) {
    #jssLogo {
        width = 200px;
        transition = 0.5s;
    }
}
.choices-wrapper {
    display = flex;
    alignItems = center;
    justifyContent = space-evenly;
    gap = 15px;
    width = 100%;
    marginTop = 25px;
}
.choice-doc {
    width = 50%;
    height = 400px;
    display = flex;
    flexDirection = column;
    alignItems = center;
    textAlign = center;
    gap = 15px;
    padding = 15px;
}
.choice-doc-desc {
    marginBottom = 15px;
}
.choice-doc-title {
    fontSize = 20px;
    color = #333;
    paddingInline = 40px;
    marginBottom = 20px;
}
.choice-btn {
    backgroundColor = #000;
    color = #fff;
    border = none;
    borderRadius = 500px;
    height = 45px;
    width = 230px;
    fontSize = 15px;
    paddingInline = 10px;
    display = flex;
    alignItems = center;
    justifyContent = center;
    transition = 0.2s;
    cursor = pointer;
}
.choice-btn:mouseover {
    boxShadow = '0 2.5px 0px 2px #333';
    transform = translateY(-2.5px);
}
.choice-btn:mouseout {
    transform = translateY(0px);
    boxShadow = '0 0 0 3px #fff, 0 0 0 5px #ff0';
}
.soon {
    padding = 50px;
}
.soon-feature {
    padding = 15px;
}
.code-jss {
    maxHeight = 400px;
}