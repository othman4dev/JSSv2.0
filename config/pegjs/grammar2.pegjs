start = _ stylesheet

stylesheet = stat:statement* _ { return { stylesheet: stat }; }

statement
  = stat:( keyframes / media / block_variable / variable / function / tunnel / conditional / selector_block ) { return  {type: stat.type , stat}; }

keyframes
  = _ "@keyframes" _ name:word _ "{" _ code:selector_block* _ "}" { return { type: "keyframes", name : name, value: code }; }

media
  = _ "@media" _ condition:([^{}@;]+) _ "{" _ code:selector_block* _ "}" { return { type: "media", condition : condition.join(''), value: code }; }

block_variable
  = _ "--" name:word _ "{" _ propdec:property_declaration* _ "}" { return { type: "block_variable", name: name, propreties: propdec }; }

variable
  = _ "--" _ name:word _ "=" _ value:value _ ";" { return { type: "variable", name: name, value: value }; }

function
  = _ "function" _ func:word _ "(" _ func_param:( function_param / number_unit ) _ ")" _ "{" _ statements:statement* _ "}" _ 
    { return { type: "function", function: func , function_param: func_param, statements: statements }; }

function_param 
  = "(" _ sel:selector _ "):" _ eventType:word _ { return { selector: sel, eventType: eventType }; }

tunnel
  = _ selector1:selector _ ":::" _ selector2:selector _ "{" _ relative_proprety:relative_proprety* _ "}" _ {return { type: "tunnel", selector1: selector1, selector2: selector2, relative_proprety: relative_proprety }; }

conditional
  = _ "if" _ "(" _ condition:condition _ ")" _ "{" _ then:statement* _ "}" _ { return { type: "conditional", if: condition, then: then }; }

selector_block
  = _ sel:( multi_selector / selector ) _ "{" _ propdec:property_declaration* _ "}" _ { return {  type: "selector_block", selector: sel, propreties: propdec }; }

comment
  = "/*" [^*]* "*" / [^/]* "/" { return {type : "comment" , value : text()}; }

selector
  = _ s:selector_type* str:selector_text* "["? idx:([0-9]+)? "]"? atts:attribute_selector* pseu:pseudo_class* { return { type: s, name: str, indices: idx, attributes: atts, pseudoClasses: pseu }; }

multi_selector
  = head:selector tail:(_ "," _ selector)+ {
      return { type: "multi_selector", value: [head, ...tail.map(([,, ,sel]) => sel)] };
    }

attribute_selector
  = "[" _ [a-zA-Z0-9]* _ "=" _  [a-zA-Z0-9"']* _ "]" { return { attribute: text() }; }

property_declaration
  = relative_proprety / _ prop:property _ "=" _ val:value _ ";" { return { property: prop, value: val }; } / _ selector_block _  { return text(); }

property
  = string { return text().trimEnd(); }

///////////////////////////////////////////////

value
  = _ val:( calculation / arrow_function / style_function / function_declaration / color / HTML / text / escaped /number_unit / number / word / string / general ) _ { return { type: val.type, value : val}; }

calculation
  = term1:term _  operator:operator _ term2:term { return {  type: "calculation", term1 : term1, operator : operator, term2: term2 }; } 

term
  = arrow_function / number_unit / number / word / string

arrow_function
  = "(" _ selector:selector _ ")->" javaScriptStyleElement:javaScriptStyleElement { return {type:'arrow_function', selector:selector, javaScriptStyleElement:javaScriptStyleElement} ; }

style_function
  = fn:[a-zA-Z0-9-]+ _ "(" _ str:string* _ ")" _ { return { type: "style_function", function: fn, arguments: str , value: text()}; }

color
  = ("#" [0-9a-fA-F]*) { return { type: "color", value: text()}; }

number
  = "-"* [0-9.]+ { return { type: "number" , value : text()}; }

number_unit
  = num:number str:string { return { type: "number_unit", number: num, unit: str }; }

escaped
  = "'" _ chars:([^;']*) _ "'" { return { type: "escaped", value: chars.join('') }; }

text
  = "\"" _ chars:([^"']*) _ "\"" { return { type: "text", value: chars.join('') }; }

HTML
  = "`" _ chars:([^`]*) _ "`" { return { type: "HTML", value: chars.join('').replace(/[\r\n\t]/g, '') }; }

word
  = main:[a-zA-Z-]* { return { type: "word", value: text() }; }

selector_text
  = ( [a-zA-Z0-9-_#%&<>._*]_ )+ { return text(); }

string
  = ([a-zA-Z0-9-_#%&.,] _? )+ { return { type: "string", value: text().trimEnd()}; }

general
  = [^;]* { return { type: "general", value: text()}; }

function_declaration
  = sf:[a-zA-Z0-9]+ "(" _ val:value _ ")" { return { type: "function_declaration", style_function : sf , value : val}; }


javaScriptStyleElement
  = [a-zA-Z]* { return { type: "javaScriptStyleElement", value: text()}; }

selector_type
  = [#.] { return text(); }

multi_comma
  =  ( _ value _ "," )* { return {type: "multi_coma", value: text().split(',')}; }

index
  = "[" num:number "]" { return num ; }

_ "whitespace"
  = [ \t\n\r]*

simple_selector
  = "(" selector_type string ")" { return { type: selector_type, name: string }; }

pseudo_class
  = _ (":" / "::") psd:string _ { return {type: "pseudo_class", value: psd}; }

function_type
 = [a-zA-Z]* { return text(); }

constants
  = javaScriptStyleElement "(" _ coefficient _ ")" _

coefficient
  = number { return text(); }

condition 
  = left:( string / arrow_function ) _ comparison:comparison _ right:( string / arrow_function ) { return { type: "condition", left: left, comparison: comparison, right: right }};

comparison
  = ">=" / "<=" / "==" / ">" / "<" { return text(); }

operator
  = "*" / "/" / "+" / "-" / "%" / "^" { return text(); }

relative_proprety
  = _ rp:word "(" _ num:number _ ")" _ ";" {return { type: "relative_proprety", relative_proprety : rp , coe : num }}