{
  stylesheet: [
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'header ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#000' } }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'justifyContent',
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-between' }
            }
          },
          {
            property: 'paddingInline',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '15' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '#' ],
          name: [ 'div1 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '100' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '50' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#0091dc' }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '#' ],
          name: [ 'div2 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'word', value: { type: 'word', value: 'red' } }
          },
          {
            property: 'height',
            value: {
              type: 'arrow_function',
              value: {
                type: 'arrow_function',
                selector: {
                  type: [ '#' ],
                  name: [ 'div1' ],
                  indices: null,
                  attributes: [],
                  pseudoClasses: []
                },
                javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'height' }
              }
            }
          },
          {
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '50' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'conditional',
      stat: {
        type: 'conditional',
        if: {
          type: 'condition',
          left: {
            type: 'arrow_function',
            selector: {
              type: [ '#' ],
              name: [ 'div1' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'width' }
          },
          comparison: '>=',
          right: { type: 'string', value: '50px ' }
        },
        then: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'div2 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'width',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '150' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'delay' },
        function_param: {
          type: 'number_unit',
          number: { type: 'number', value: '5000' },
          unit: { type: 'string', value: 'ms' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'div2 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'width',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '15' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                },
                {
                  property: 'height',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '150' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                }
              ]
            }
          },
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'html ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'fontFamily',
            value: {
              type: 'text',
              value: { type: 'text', value: 'Montserrat' }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'body ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'word',
              value: { type: 'word', value: 'whitesmoke' }
            }
          },
          {
            property: 'color',
            value: {
              type: 'arrow_function',
              value: {
                type: 'arrow_function',
                selector: {
                  type: [ '#' ],
                  name: [ 'div15' ],
                  indices: null,
                  attributes: [],
                  pseudoClasses: []
                },
                javaScriptStyleElement: {
                  type: 'javaScriptStyleElement',
                  value: 'backgroundColor'
                }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'nav__list ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'listStyle',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'padding',
            value: { type: 'number', value: { type: 'number', value: '0' } }
          },
          {
            property: 'gap',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '15' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'paddingInline',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '15' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'h11 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'margin',
            value: { type: 'number', value: { type: 'number', value: '0' } }
          },
          {
            property: 'fontWeight',
            value: { type: 'number', value: { type: 'number', value: '800' } }
          },
          {
            property: 'marginLeft',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '30' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'main ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'justifyContent',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'flexDirection',
            value: { type: 'word', value: { type: 'word', value: 'column' } }
          },
          {
            property: 'minHeight',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '87' },
                unit: { type: 'string', value: 'vh' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'a  ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'textDecoration',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'modal ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '350' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'justifyContent',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'div' ],
          indices: [ '2' ],
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'position',
            value: {
              type: 'word',
              value: { type: 'word', value: 'relative' }
            }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '100' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '450' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '15' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'backgroundColor',
            value: { type: 'word', value: { type: 'word', value: 'white' } }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'id' ],
          indices: [ '1' ],
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#555' } }
          },
          {
            property: 'fontSize',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '12' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'position',
            value: {
              type: 'word',
              value: { type: 'word', value: 'absolute' }
            }
          },
          {
            property: 'top',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'right',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'h2 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'paddingTop',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'paddingBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'p ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '15' },
                unit: { type: 'string', value: 'px' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'button' ],
          indices: [ '1' ],
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'word', value: { type: 'word', value: 'black' } }
          },
          {
            property: 'color',
            value: { type: 'word', value: { type: 'word', value: 'white' } }
          },
          {
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '5' },
                unit: { type: 'string', value: 'px 10px' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
          },
          {
            property: 'fontSize',
            value: {
              type: 'calculation',
              value: {
                type: 'calculation',
                term1: { type: 'number', value: '17' },
                operator: '-',
                term2: { type: 'number', value: '20' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '#' ],
          name: [ 'btnStart ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'word', value: { type: 'word', value: 'black' } }
          },
          {
            property: 'color',
            value: { type: 'word', value: { type: 'word', value: 'white' } }
          },
          {
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
          },
          {
            property: 'fontSize',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '17' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.3' },
                unit: { type: 'string', value: 's' }
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '#' ],
          name: [ 'btnStart' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'hover ' }
            }
          ]
        },
        propreties: [
          {
            property: 'transform',
            value: {
              type: 'style_function',
              value: {
                type: 'style_function',
                function: [
                  't', 'r', 'a', 'n',
                  's', 'l', 'a', 't',
                  'e', 'Y'
                ],
                arguments: [ { type: 'string', value: '-2px' } ],
                value: 'translateY(-2px)'
              }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'btnStart' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'hover ' }
            }
          ]
        },
        propreties: [
          {
            property: 'transform',
            value: {
              type: 'style_function',
              value: {
                type: 'style_function',
                function: [
                  't', 'r', 'a', 'n',
                  's', 'l', 'a', 't',
                  'e', 'Y'
                ],
                arguments: [ { type: 'string', value: '-2px' } ],
                value: 'translateY(-2px)'
              }
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '.' ],
            name: [ 'modals' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                },
                {
                  property: 'color',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'red' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'btnStart' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                }
              ]
            }
          },
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'btnStart ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'none' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'btn1' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'none' }
                  }
                }
              ]
            }
          },
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal2 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'btn2' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal2 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'none' }
                  }
                }
              ]
            }
          },
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal3 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'btn3' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal3 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'none' }
                  }
                }
              ]
            }
          },
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal4 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'btn4' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal4 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'none' }
                  }
                }
              ]
            }
          },
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'modal5 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'display',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'block' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'conditional',
      stat: {
        type: 'conditional',
        if: {
          type: 'condition',
          left: {
            type: 'arrow_function',
            selector: {
              type: [ '#' ],
              name: [ 'div' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'width' }
          },
          comparison: '>',
          right: { type: 'string', value: '50' }
        },
        then: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'div1 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'backgroundColor',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'red' }
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'tunnel',
      stat: {
        type: 'tunnel',
        selector1: {
          type: [ '#' ],
          name: [ 'div1' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        selector2: {
          type: [ '#' ],
          name: [ 'div2 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        relative_proprety: [
          {
            type: 'relative_proprety',
            relative_proprety: { type: 'word', value: 'width' },
            coe: { type: 'number', value: '1' }
          },
          {
            type: 'relative_proprety',
            relative_proprety: { type: 'word', value: 'height' },
            coe: { type: 'number', value: '1.5' }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: [ 'body ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'width',
            value: {
              type: 'calculation',
              value: {
                type: 'calculation',
                term1: {
                  type: 'number_unit',
                  number: { type: 'number', value: '100' },
                  unit: { type: 'string', value: 'px ' }
                },
                operator: '+',
                term2: {
                  type: 'arrow_function',
                  selector: {
                    type: [ '#' ],
                    name: [ 'div15' ],
                    indices: null,
                    attributes: [],
                    pseudoClasses: []
                  },
                  javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'height' }
                }
              }
            }
          },
          {
            property: 'height',
            value: {
              type: 'calculation',
              value: {
                type: 'calculation',
                term1: { type: 'number', value: '100' },
                operator: '+',
                term2: {
                  type: 'arrow_function',
                  selector: {
                    type: [ '#' ],
                    name: [ 'div15' ],
                    indices: null,
                    attributes: [],
                    pseudoClasses: []
                  },
                  javaScriptStyleElement: {
                    type: 'javaScriptStyleElement',
                    value: 'fontWeight'
                  }
                }
              }
            }
          }
        ]
      }
    },
    {
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '.' ],
            name: [ 'btn' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'click' }
        },
        statements: [
          {
            type: 'conditional',
            stat: {
              type: 'conditional',
              if: {
                type: 'condition',
                left: {
                  type: 'arrow_function',
                  selector: {
                    type: [ '#' ],
                    name: [ 'modal' ],
                    indices: null,
                    attributes: [],
                    pseudoClasses: []
                  },
                  javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'display' }
                },
                comparison: '==',
                right: { type: 'string', value: 'block' }
              },
              then: [
                {
                  type: 'selector_block',
                  stat: {
                    type: 'selector_block',
                    selector: {
                      type: [ '#' ],
                      name: [ 'modal ' ],
                      indices: null,
                      attributes: [],
                      pseudoClasses: []
                    },
                    propreties: [
                      {
                        property: 'display',
                        value: {
                          type: 'word',
                          value: { type: 'word', value: 'none' }
                        }
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'conditional',
      stat: {
        type: 'conditional',
        if: {
          type: 'condition',
          left: {
            type: 'arrow_function',
            selector: {
              type: [ '#' ],
              name: [ 'modal' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'color' }
          },
          comparison: '==',
          right: { type: 'string', value: 'white' }
        },
        then: [
          {
            type: 'function',
            stat: {
              type: 'function',
              function: { type: 'word', value: 'event' },
              function_param: {
                selector: {
                  type: [ '#' ],
                  name: [ 'btn' ],
                  indices: null,
                  attributes: [],
                  pseudoClasses: []
                },
                eventType: { type: 'word', value: 'click' }
              },
              statements: [
                {
                  type: 'selector_block',
                  stat: {
                    type: 'selector_block',
                    selector: {
                      type: [ '#' ],
                      name: [ 'body ' ],
                      indices: null,
                      attributes: [],
                      pseudoClasses: []
                    },
                    propreties: [
                      {
                        property: 'backgroundColor',
                        value: {
                          type: 'word',
                          value: { type: 'word', value: 'whitesmoke' }
                        }
                      },
                      {
                        property: 'width',
                        value: {
                          type: 'calculation',
                          value: {
                            type: 'calculation',
                            term1: {
                              type: 'number_unit',
                              number: { type: 'number', value: '100' },
                              unit: { type: 'string', value: 'px ' }
                            },
                            operator: '+',
                            term2: {
                              type: 'arrow_function',
                              selector: {
                                type: [ '#' ],
                                name: [ 'div15' ],
                                indices: null,
                                attributes: [],
                                pseudoClasses: []
                              },
                              javaScriptStyleElement: {
                                type: 'javaScriptStyleElement',
                                value: 'height'
                              }
                            }
                          }
                        }
                      },
                      {
                        property: 'height',
                        value: {
                          type: 'calculation',
                          value: {
                            type: 'calculation',
                            term1: { type: 'number', value: '100' },
                            operator: '+',
                            term2: {
                              type: 'arrow_function',
                              selector: {
                                type: [ '#' ],
                                name: [ 'div15' ],
                                indices: null,
                                attributes: [],
                                pseudoClasses: []
                              },
                              javaScriptStyleElement: {
                                type: 'javaScriptStyleElement',
                                value: 'fontWeight'
                              }
                            }
                          }
                        }
                      }
                    ]
                  }
                },
                {
                  type: 'selector_block',
                  stat: {
                    type: 'selector_block',
                    selector: {
                      type: [ '.' ],
                      name: [ 'body' ],
                      indices: null,
                      attributes: [],
                      pseudoClasses: [
                        {
                          type: 'pseudo_class',
                          value: { type: 'string', value: 'hover ' }
                        }
                      ]
                    },
                    propreties: [
                      {
                        property: 'backgroundColor',
                        value: {
                          type: 'color',
                          value: { type: 'color', value: '#000' }
                        }
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: 'multi_selector',
          value: [
            {
              type: [ '#' ],
              name: [ 'header' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            {
              type: [ '.' ],
              name: [ 'body' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            {
              type: [],
              name: [ 'html ' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            }
          ]
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'word', value: { type: 'word', value: 'black' } }
          },
          {
            property: 'color',
            value: { type: 'word', value: { type: 'word', value: 'white' } }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'justifyContent',
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-between' }
            }
          },
          {
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '60' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'marginBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'innerHTML',
            value: {
              type: 'text',
              value: { type: 'text', value: '<div>click me</div>' }
            }
          }
        ]
      }
    },
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '#' ],
          name: [ 'div' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'click ' }
            }
          ]
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#f00' } }
          },
          {
            property: 'innerText',
            value: { type: 'text', value: { type: 'text', value: 'done' } }
          },
          {
            property: 'innerHTML',
            value: {
              type: 'HTML',
              value: {
                type: 'HTML',
                value: "#div:click {    backgroundColor = #f00    innerText = 'done'    innerHTML = 'sdfasdfasdfasdfa';}"
              }
            }
          }
        ]
      }
    },
    {
      type: 'variable',
      stat: {
        type: 'variable',
        name: { type: 'word', value: 'colorf' },
        value: { type: 'word', value: { type: 'word', value: 'test' } }
      }
    },
    {
      type: 'variable',
      stat: {
        type: 'variable',
        name: { type: 'word', value: 'primary' },
        value: { type: 'word', value: { type: 'word', value: 'test' } }
      }
    },
    {
      type: 'variable',
      stat: {
        type: 'variable',
        name: { type: 'word', value: 'initial' },
        value: {
          type: 'arrow_function',
          value: {
            type: 'arrow_function',
            selector: {
              type: [ '#' ],
              name: [ 'modal1' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            javaScriptStyleElement: {
              type: 'javaScriptStyleElement',
              value: 'backgroundColor'
            }
          }
        }
      }
    },
    {
      type: 'block_variable',
      stat: {
        type: 'block_variable',
        name: { type: 'word', value: 'color' },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'word', value: { type: 'word', value: 'red' } }
          },
          {
            property: 'content',
            value: {
              type: 'text',
              value: { type: 'text', value: 'this is a button' }
            }
          },
          {
            property: 'width',
            value: {
              type: 'arrow_function',
              value: {
                type: 'arrow_function',
                selector: {
                  type: [ '.' ],
                  name: [ 'test' ],
                  indices: [ '0' ],
                  attributes: [],
                  pseudoClasses: []
                },
                javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'width' }
              }
            }
          }
        ]
      }
    }
  ]
}