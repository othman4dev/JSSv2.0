{
  stylesheet: [
    {
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [],
          name: { type: 'string', value: 'header ' },
          indices: [],
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor ',
            value: { type: 'color', value: { type: 'color', value: '#000' } }
          },
          {
            property: 'color ',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'display ',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'alignItems ',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'justifyContent ',
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-between' }
            }
          },
          {
            property: 'paddingInline ',
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
          name: { type: 'string', value: 'div1 ' },
          indices: [],
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'height ',
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
            property: 'width ',
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
            property: 'backgroundColor ',
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
          name: { type: 'string', value: 'div2 ' },
          indices: [],
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor ',
            value: { type: 'word', value: { type: 'word', value: 'red' } }
          },
          {
            property: 'height ',
            value: {
              type: 'arrow_function',
              value: {
                type: 'arrow_function',
                selector: {
                  type: [ '#' ],
                  name: { type: 'string', value: 'div1' },
                  indices: [],
                  attributes: [],
                  pseudoClasses: []
                },
                javaScriptStyleElement: { type: 'javaScriptStyleElement', value: 'height' }
              }
            }
          },
          {
            property: 'width ',
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
              name: { type: 'string', value: 'div1' },
              indices: [],
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
                name: { type: 'string', value: 'div2 ' },
                indices: [],
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'width ',
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
            selector: {
              type: [ '#' ],
              name: { type: 'string', value: 'div2 ' },
              indices: [],
              attributes: [],
              pseudoClasses: []
            },
            propreties: [
              {
                property: 'width ',
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
                property: 'height ',
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
          },
          {
            type: 'selector_block',
            selector: {
              type: [ '.' ],
              name: { type: 'string', value: 'modal ' },
              indices: [],
              attributes: [],
              pseudoClasses: []
            },
            propreties: [
              {
                property: 'display ',
                value: {
                  type: 'word',
                  value: { type: 'word', value: 'block' }
                }
              }
            ]
          }
        ]
      }
    }
  ]
}