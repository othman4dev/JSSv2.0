const calc = (term1, term2, operator) => {
  const [term1Value, term1Unit = ""] = term1.match(/(\d+)(\D*)/).slice(1);
  const [term2Value, term2Unit = ""] = term2.match(/(\d+)(\D*)/).slice(1);
  const operations = {
    "+": (a, b) => a + b,
    "-": (a, b) => a - b,
    "*": (a, b) => a * b,
    "/": (a, b) => a / b,
    "%": (a, b) => a % b,
  };
  const result =
    operations[operator](+term1Value, +term2Value) +
    (term1Unit === term2Unit || term2Unit === "" ? term1Unit : term2Unit);
  return result;
};

const applyStyles = (element, styles) => Object.assign(element.style, styles);

const compare = (a, comparison, b) => {
  const unitToPixels = {
    px: 1,
    pt: 1.25,
    pc: 15,
    mm: 3.779528,
    cm: 37.79528,
    in: 96,
    em: 16,
    rem: 16,
    ex: 8,
    ch: 8,
    vw: window.innerWidth / 100,
    vh: window.innerHeight / 100,
    vmin: Math.min(window.innerWidth, window.innerHeight) / 100,
    vmax: Math.max(window.innerWidth, window.innerHeight) / 100,
    "%": 16 / 100,
  };
  let [valueA, unitA] = a.match(/(\d+)(\D*)/).slice(1);
  let [valueB, unitB] = b.match(/(\d+)(\D*)/).slice(1);
  valueA *= unitToPixels[unitA] || 1;
  valueB *= unitToPixels[unitB] || 1;
  const comparisons = {
    "==": (a, b) => a == b,
    "!=": (a, b) => a != b,
    ">": (a, b) => a > b,
    "<": (a, b) => a < b,
    ">=": (a, b) => a >= b,
    "<=": (a, b) => a <= b,
  };
  if (!comparisons[comparison])
    throw new Error(`Invalid comparison operator: ${comparison}`);
  return comparisons[comparison](valueA, valueB);
};
document.querySelectorAll("header").forEach((element) => {
  element.style.backgroundColor = "#000";
  element.style.color = "#fff";
  element.style.display = "flex";
  element.style.alignItems = "center";
  element.style.justifyContent = "space-between";
  element.style.paddingInline = "15px";
});
document.querySelector("#div1").style.height = "100px";
document.querySelector("#div1").style.width = "50px";
document.querySelector("#div1").style.backgroundColor = "#0091dc";
document.querySelector("#div2").style.backgroundColor = "red";
document.querySelector("#div2").style.height = getComputedStyle(
  document.querySelector("#div1"),
).getPropertyValue("height");
document.querySelector("#div2").style.width = "50px";
if (
  compare(
    getComputedStyle(document.querySelector("#div1")).getPropertyValue("width"),
    ">=",
    "50px ",
  )
) {
  document.querySelector("#div2").style.width = "150px";
}
setTimeout(() => {
  document.querySelector("#div2").style.width = "15px";
  document.querySelector("#div2").style.height = "150px";
  document.querySelectorAll(".modal").forEach((element) => {
    element.style.display = "block";
  });
}, 5000);
document.querySelectorAll("html").forEach((element) => {
  element.style.fontFamily = "Montserrat";
});
document.querySelectorAll("body").forEach((element) => {
  element.style.backgroundColor = "whitesmoke";
  element.style.color = getComputedStyle(
    document.querySelector("#div15"),
  ).getPropertyValue("background-color");
});
document.querySelectorAll(".nav__list").forEach((element) => {
  element.style.display = "flex";
  element.style.listStyle = "none";
  element.style.padding = "0";
  element.style.gap = "15px";
  element.style.paddingInline = "15px";
});
document.querySelectorAll(".h11").forEach((element) => {
  element.style.margin = "0";
  element.style.fontWeight = "800";
  element.style.marginLeft = "30px";
});
document.querySelectorAll("main").forEach((element) => {
  element.style.display = "flex";
  element.style.alignItems = "center";
  element.style.justifyContent = "center";
  element.style.flexDirection = "column";
  element.style.minHeight = "87vh";
});
document.querySelectorAll("a").forEach((element) => {
  element.style.textDecoration = "none";
  element.style.color = "#fff";
});
document.querySelectorAll("modal").forEach((element) => {
  element.style.width = "350px";
  element.style.display = "flex";
  element.style.alignItems = "center";
  element.style.justifyContent = "center";
});
document.querySelectorAll("div")[2].style.position = "relative";
document.querySelectorAll("div")[2].style.height = "100%";
document.querySelectorAll("div")[2].style.width = "450px";
document.querySelectorAll("div")[2].style.display = "none";
document.querySelectorAll("div")[2].style.padding = "15px";
document.querySelectorAll("div")[2].style.backgroundColor = "white";
document.querySelectorAll(".id")[1].style.color = "#555";
document.querySelectorAll(".id")[1].style.fontSize = "12px";
document.querySelectorAll(".id")[1].style.position = "absolute";
document.querySelectorAll(".id")[1].style.top = "10px";
document.querySelectorAll(".id")[1].style.right = "10px";
document.querySelectorAll("h2").forEach((element) => {
  element.style.paddingTop = "10px";
  element.style.paddingBottom = "10px";
});
document.querySelectorAll("p").forEach((element) => {
  element.style.padding = "15px";
});
document.querySelectorAll("button")[1].style.backgroundColor = "black";
document.querySelectorAll("button")[1].style.color = "white";
document.querySelectorAll("button")[1].style.padding = "5px 10px";
document.querySelectorAll("button")[1].style.cursor = "pointer";
document.querySelectorAll("button")[1].style.fontSize = calc(`17`, ` 20`, "-");
document.querySelector("#btnStart").style.backgroundColor = "black";
document.querySelector("#btnStart").style.color = "white";
document.querySelector("#btnStart").style.padding = "10px";
document.querySelector("#btnStart").style.cursor = "pointer";
document.querySelector("#btnStart").style.fontSize = "17px";
document.querySelector("#btnStart").style.transition = "0.3s";
var styleStore21w8imhhz = null;
document.querySelector("#btnStart").addEventListener("mouseover", (event) => {
  styleStore21w8imhhz = window.getComputedStyle(
    document.querySelector("#undefined"),
  );
  event.target.style.transform = "translateY(-2px)";
});
document.querySelector("#btnStart").addEventListener("mouseout", (event) => {
  applyStyles(event.target, styleStore21w8imhhz);
});
var styleStorevzd1g5amw = null;
document.querySelectorAll(".btnStart").forEach((element) => {
  element.addEventListener("mouseover", (event) => {
    styleStorevzd1g5amw = window.getComputedStyle(
      document.querySelector(".undefined"),
    );
    event.target.style.transform = "translateY(-2px)";
  });
  element.addEventListener("mouseout", (event) => {
    applyStyles(event.target, styleStorevzd1g5amw);
  });
});
document.querySelector("#btnStart").addEventListener("click", () => {
  document.querySelectorAll(".modal").forEach((element) => {
    element.style.display = "block";
  });
  document.querySelector("#btnStart").style.display = "none";
});
document.querySelector("#btn1").addEventListener("click", () => {
  document.querySelectorAll(".modal").forEach((element) => {
    element.style.display = "none";
  });
  document.querySelectorAll(".modal2").forEach((element) => {
    element.style.display = "block";
  });
});
document.querySelector("#btn2").addEventListener("click", () => {
  document.querySelectorAll(".modal2").forEach((element) => {
    element.style.display = "none";
  });
  document.querySelectorAll(".modal3").forEach((element) => {
    element.style.display = "block";
  });
});
document.querySelector("#btn3").addEventListener("click", () => {
  document.querySelectorAll(".modal3").forEach((element) => {
    element.style.display = "none";
  });
  document.querySelectorAll(".modal4").forEach((element) => {
    element.style.display = "block";
  });
});
document.querySelector("#btn4").addEventListener("click", () => {
  document.querySelectorAll(".modal4").forEach((element) => {
    element.style.display = "none";
  });
  document.querySelectorAll(".modal5").forEach((element) => {
    element.style.display = "block";
  });
});
if (
  compare(
    getComputedStyle(document.querySelector("#div")).getPropertyValue("width"),
    ">",
    "50",
  )
) {
  document.querySelector("#div1").style.backgroundColor = "red";
}
var observer7f39dt42h = new MutationObserver(function (mutations) {
  mutations.forEach(function (mutation) {
    if (mutation.attributeName === "style") {
      document.querySelector("#div2").style.width = calc(
        getComputedStyle(document.querySelector("#div2 ")).getPropertyValue(
          "width",
        ),
        "1",
        "*",
      );
    }
  });
});
var config7f39dt42h = { attributes: true, attributeFilter: ["style"] };
observer7f39dt42h.observe(document.querySelector("#div2 "), config7f39dt42h);

var observerhq9qb6bdr = new MutationObserver(function (mutations) {
  mutations.forEach(function (mutation) {
    if (mutation.attributeName === "style") {
      document.querySelector("#div2").style.height = calc(
        getComputedStyle(document.querySelector("#div2 ")).getPropertyValue(
          "height",
        ),
        "1.5",
        "*",
      );
    }
  });
});
var confighq9qb6bdr = { attributes: true, attributeFilter: ["style"] };
observerhq9qb6bdr.observe(document.querySelector("#div2 "), confighq9qb6bdr);

document.querySelectorAll("body").forEach((element) => {
  element.style.width = calc(
    `100px`,
    getComputedStyle(document.querySelector("#div15")).getPropertyValue(
      "height",
    ),
    "+",
  );
  element.style.height = calc(
    `100`,
    getComputedStyle(document.querySelector("#div15")).getPropertyValue(
      "font-weight",
    ),
    "+",
  );
});
document.querySelectorAll(".btn").forEach((element) => {
  element.addEventListener("click", () => {
    if (
      compare(
        getComputedStyle(document.querySelector("#modal")).getPropertyValue(
          "display",
        ),
        "==",
        "block",
      )
    ) {
      document.querySelector("#modal").style.display = "none";
    }
  });
});
if (
  compare(
    getComputedStyle(document.querySelector("#modal")).getPropertyValue(
      "color",
    ),
    "==",
    "white",
  )
) {
  document.querySelector("#btn").addEventListener("click", () => {
    document.querySelector("#body").style.backgroundColor = "whitesmoke";
    document.querySelector("#body").style.width = calc(
      `100px`,
      getComputedStyle(document.querySelector("#div15")).getPropertyValue(
        "height",
      ),
      "+",
    );
    document.querySelector("#body").style.height = calc(
      `100`,
      getComputedStyle(document.querySelector("#div15")).getPropertyValue(
        "font-weight",
      ),
      "+",
    );
    document.querySelectorAll(".body").forEach((element) => {
      element.style.backgroundColor = "#000";
    });
  });
}
document.querySelector("#header").style.backgroundColor = "black";
document.querySelector("#header").style.color = "white";
document.querySelector("#header").style.display = "flex";
document.querySelector("#header").style.alignItems = "center";
document.querySelector("#header").style.justifyContent = "space-between";
document.querySelector("#header").style.padding = "10px";
document.querySelector("#header").style.height = "60px";
document.querySelector("#header").style.marginBottom = "10px";
document.querySelector("#header").innerHTML = `'undefined'`;
document.querySelectorAll(".body").forEach((element) => {
  element.style.backgroundColor = "black";
  element.style.color = "white";
  element.style.display = "flex";
  element.style.alignItems = "center";
  element.style.justifyContent = "space-between";
  element.style.padding = "10px";
  element.style.height = "60px";
  element.style.marginBottom = "10px";
  element.innerHTML = `'undefined'`;
});
document.querySelectorAll("html").forEach((element) => {
  element.style.backgroundColor = "black";
  element.style.color = "white";
  element.style.display = "flex";
  element.style.alignItems = "center";
  element.style.justifyContent = "space-between";
  element.style.padding = "10px";
  element.style.height = "60px";
  element.style.marginBottom = "10px";
  element.innerHTML = `'undefined'`;
});
document.querySelector("#div").addEventListener("click ", (event) => {
  event.target.style.backgroundColor = "#f00";
  event.target.innerText = "done";
  event.target.innerHTML = `'#div:click {    backgroundColor = #f00    innerText = 'done'    innerHTML = 'sdfasdfasdfasdfa';}'`;
});
let colorf = "test";
let primary = "test";
let initial = getComputedStyle(
  document.querySelector("#modal1"),
).getPropertyValue("background-color");
let color = [
  { prop: "backgroundColor", value: "red" },
  { prop: "content", value: "this is a button" },
  {
    prop: "width",
    value: getComputedStyle(
      document.querySelectorAll(".test")[0],
    ).getPropertyValue("width"),
  },
];

/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */
