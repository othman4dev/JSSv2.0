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
document.querySelector("#header-item1").addEventListener("mouseover", () => {
  document.querySelector("#header-item-text1").style.maxWidth = "100px";
});
document.querySelector("#header-item1").addEventListener("mouseout", () => {
  document.querySelector("#header-item-text1").style.maxWidth = "0px";
});
document.querySelector("#header-item2").addEventListener("mouseover", () => {
  document.querySelector("#header-item-text2").style.maxWidth = "100px";
});
document.querySelector("#header-item2").addEventListener("mouseout", () => {
  document.querySelector("#header-item-text2").style.maxWidth = "0px";
});
document.querySelector("#header-item3").addEventListener("mouseover", () => {
  document.querySelector("#header-item-text3").style.maxWidth = "100px";
});
document.querySelector("#header-item3").addEventListener("mouseout", () => {
  document.querySelector("#header-item-text3").style.maxWidth = "0px";
});
document.querySelector("#header-item4").addEventListener("mouseover", () => {
  document.querySelector("#header-item-text4").style.maxWidth = "100px";
});
document.querySelector("#header-item4").addEventListener("mouseout", () => {
  document.querySelector("#header-item-text4").style.maxWidth = "0px";
});
document.querySelector("#searchContainer").addEventListener("click", () => {
  document.querySelectorAll(".search-inp").forEach((element) => {
    element.style.width = "300px";
    element.style.paddingLeft = "15px";
    element.style.borderRadius = "0%";
  });
  document.querySelectorAll(".search-btn").forEach((element) => {
    element.style.right = "0%";
    element.style.left = "unset";
    element.style.transform = "translate(0%,-50%)";
  });
});
document.querySelector("#searchInput").addEventListener("blur", () => {
  document.querySelectorAll(".search-inp").forEach((element) => {
    element.style.width = "35px";
    element.style.paddingLeft = "35px";
    element.style.borderRadius = "50%";
  });
  document.querySelectorAll(".search-btn").forEach((element) => {
    element.style.right = "unset";
    element.style.left = "50%";
    element.style.transform = "translate(-50%,-50%)";
  });
});
document.querySelector("#big-hero-title").addEventListener("mouseover", () => {
  document.querySelectorAll(".hidden-word").forEach((element) => {
    element.style.maxWidth = "200px";
    element.style.marginRight = "5px";
  });
});
document.querySelector("#big-hero-title").addEventListener("mouseout", () => {
  document.querySelectorAll(".hidden-word").forEach((element) => {
    element.style.maxWidth = "0px";
    element.style.marginRight = "0px";
  });
});
document.querySelector("#getStarted").addEventListener("click", () => {
  document.querySelectorAll("main").forEach((element) => {
    element.style.filter = "blur(5px)";
    element.style.transition = "0.4s";
  });
  document.querySelector("#modalStart").style.display = "block";
});
document.querySelector("#closeModal").addEventListener("click", () => {
  document.querySelector("#modalStart").style.display = "none";
  document.querySelectorAll("main").forEach((element) => {
    element.style.filter = "none";
    element.style.transition = "0.4s";
  });
});
setTimeout(() => {
  document.querySelector("#jssLogo").style.width = "200px";
  document.querySelector("#jssLogo").style.transition = "0.5s";
}, 1000);
document.querySelectorAll(".choice-btn").forEach((element) => {
  element.addEventListener("mouseover", () => {
    element.style.boxShadow = "0 2.5px 0px 2px #333";
    element.style.transform = "translateY(-2.5px)";
  });
});
document.querySelectorAll(".choice-btn").forEach((element) => {
  element.addEventListener("mouseover", () => {
    element.style.boxShadow = "0 2.5px 0px 2px #333";
    element.style.transform = "translateY(-2.5px)";
  });
});
document.querySelectorAll(".choice-btn").forEach((element) => {
  element.addEventListener("mouseout", () => {
    element.style.transform = "translateY(0px)";
    element.style.boxShadow = "0 0 0 3px #fff, 0 0 0 5px #ff0";
  });
});
document.querySelectorAll(".choice-btn").forEach((element) => {
  element.addEventListener("mouseout", () => {
    element.style.transform = "translateY(0px)";
    element.style.boxShadow = "0 0 0 3px #fff, 0 0 0 5px #ff0";
  });
});
document.querySelectorAll(".social")[0].addEventListener("mouseover", () => {
  document.querySelectorAll(".social")[0].style.transform = "translateY(-5px)";
  document.querySelectorAll(".social-name")[0].style.filter = "blur(0px)";
  document.querySelectorAll(".social-name")[0].style.opacity = "1";
});
document.querySelectorAll(".social")[1].addEventListener("mouseover", () => {
  document.querySelectorAll(".social")[1].style.transform = "translateY(-5px)";
  document.querySelectorAll(".social-name")[1].style.filter = "blur(0px)";
  document.querySelectorAll(".social-name")[1].style.opacity = "1";
});
document.querySelectorAll(".social")[2].addEventListener("mouseover", () => {
  document.querySelectorAll(".social")[2].style.transform = "translateY(-5px)";
  document.querySelectorAll(".social-name")[2].style.filter = "blur(0px)";
  document.querySelectorAll(".social-name")[2].style.opacity = "1";
});
document.querySelectorAll(".social")[3].addEventListener("mouseover", () => {
  document.querySelectorAll(".social")[3].style.transform = "translateY(-5px)";
  document.querySelectorAll(".social-name")[3].style.filter = "blur(0px)";
  document.querySelectorAll(".social-name")[3].style.opacity = "1";
});
document.querySelectorAll(".social")[4].addEventListener("mouseover", () => {
  document.querySelectorAll(".social")[4].style.transform = "translateY(-5px)";
  document.querySelectorAll(".social-name")[4].style.filter = "blur(0px)";
  document.querySelectorAll(".social-name")[4].style.opacity = "1";
});
document.querySelectorAll(".social")[0].addEventListener("mouseout", () => {
  document.querySelectorAll(".social")[0].style.transform = "translateY(0px)";
  document.querySelectorAll(".social-name")[0].style.filter = "blur(5px)";
  document.querySelectorAll(".social-name")[0].style.opacity = "0";
});
document.querySelectorAll(".social")[1].addEventListener("mouseout", () => {
  document.querySelectorAll(".social")[1].style.transform = "translateY(0px)";
  document.querySelectorAll(".social-name")[1].style.filter = "blur(5px)";
  document.querySelectorAll(".social-name")[1].style.opacity = "0";
});
document.querySelectorAll(".social")[2].addEventListener("mouseout", () => {
  document.querySelectorAll(".social")[2].style.transform = "translateY(0px)";
  document.querySelectorAll(".social-name")[2].style.filter = "blur(5px)";
  document.querySelectorAll(".social-name")[2].style.opacity = "0";
});
document.querySelectorAll(".social")[3].addEventListener("mouseout", () => {
  document.querySelectorAll(".social")[3].style.transform = "translateY(0px)";
  document.querySelectorAll(".social-name")[3].style.filter = "blur(5px)";
  document.querySelectorAll(".social-name")[3].style.opacity = "0";
});
document.querySelectorAll(".social")[4].addEventListener("mouseout", () => {
  document.querySelectorAll(".social")[4].style.transform = "translateY(0px)";
  document.querySelectorAll(".social-name")[4].style.filter = "blur(5px)";
  document.querySelectorAll(".social-name")[4].style.opacity = "0";
});

/* JSS Framwork by otman kharbouch, GitHub : Othman4dev. */
