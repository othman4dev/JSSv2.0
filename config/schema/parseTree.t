{
  stylesheet: [
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
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#eee' } }
          },
          {
            property: 'fontFamily',
            value: {
              type: 'word',
              value: { type: 'word', value: 'Montserrat' }
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
            property: 'paddingInline',
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
            property: 'boxShadow',
            value: {
              type: 'text',
              value: { type: 'text', value: '0 0 6px 1px black' }
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
              type: [ '.' ],
              name: [ 'first-half' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            {
              type: [ '.' ],
              name: [ 'second-half ' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            }
          ]
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
            property: 'gap',
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
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '0.5' } }
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
          name: [ 'first-half ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'justifyContent',
            value: {
              type: 'word',
              value: { type: 'word', value: 'flex-start' }
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
          name: [ 'second-half ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'justifyContent',
            value: {
              type: 'word',
              value: { type: 'word', value: 'flex-end' }
            }
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
          name: [ 'middle-half ' ],
          indices: null,
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
            property: 'width',
            value: {
              type: 'word',
              value: { type: 'word', value: 'fit-content' }
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
          name: [ 'header-logo ' ],
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
                number: { type: 'number', value: '40' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'maxWidth',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '43' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'gap',
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
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '0.5' } }
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
          name: [ 'header-items ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'word',
              value: { type: 'word', value: 'transparent' }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
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
            property: 'border',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
            property: 'gap',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '7' },
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
          name: [ 'i ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'fontSize',
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
          name: [ 'header-item-text ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'maxWidth',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'overflow',
            value: { type: 'word', value: { type: 'word', value: 'hidden' } }
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
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item1' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseover' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text1 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '100' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item1' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseout' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text1 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '0' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item2' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseover' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text2 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '100' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item2' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseout' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text2 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '0' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item3' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseover' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text3 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '100' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item3' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseout' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text3 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '0' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item4' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseover' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text4 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '100' },
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'header-item4' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'mouseout' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'header-item-text4 ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'maxWidth',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '0' },
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
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'title-desc ' ],
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
            property: 'flexDirection',
            value: { type: 'word', value: { type: 'word', value: 'column' } }
          },
          {
            property: 'gap',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0' },
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
          name: [ 'info ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'fontSize',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '9' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'marginTop',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '-3' },
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
          name: [ 'search-inp ' ],
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
                number: { type: 'number', value: '35' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'fontSize',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '11' },
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
                number: { type: 'number', value: '35' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'paddingLeft',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '35' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'outline',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.4' },
                unit: { type: 'string', value: 's' }
              }
            }
          },
          {
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '50' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'border',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
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
          name: [ 'search-btn ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
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
                number: { type: 'number', value: '50' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'left',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '50' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'transform',
            value: {
              type: 'style_function',
              value: {
                type: 'style_function',
                function: [
                  't', 'r', 'a',
                  'n', 's', 'l',
                  'a', 't', 'e'
                ],
                arguments: [ { type: 'string', value: '-50%,-50%' } ],
                value: 'translate(-50%,-50%)'
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#000' } }
          },
          {
            property: 'backgroundColor',
            value: {
              type: 'word',
              value: { type: 'word', value: 'transparent' }
            }
          },
          {
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '40' },
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
                number: { type: 'number', value: '40' },
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
      type: 'function',
      stat: {
        type: 'function',
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'searchContainer' ],
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
                name: [ 'search-inp ' ],
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
                      number: { type: 'number', value: '300' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                },
                {
                  property: 'paddingLeft',
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
                  property: 'borderRadius',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '0' },
                      unit: { type: 'string', value: '%' }
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
                name: [ 'search-btn ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'right',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '0' },
                      unit: { type: 'string', value: '%' }
                    }
                  }
                },
                {
                  property: 'left',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'unset' }
                  }
                },
                {
                  property: 'transform',
                  value: {
                    type: 'style_function',
                    value: {
                      type: 'style_function',
                      function: [
                        't', 'r', 'a',
                        'n', 's', 'l',
                        'a', 't', 'e'
                      ],
                      arguments: [ { type: 'string', value: '0%,-50%' } ],
                      value: 'translate(0%,-50%)'
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
        function: { type: 'word', value: 'event' },
        function_param: {
          selector: {
            type: [ '#' ],
            name: [ 'searchInput' ],
            indices: null,
            attributes: [],
            pseudoClasses: []
          },
          eventType: { type: 'word', value: 'blur' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '.' ],
                name: [ 'search-inp ' ],
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
                      number: { type: 'number', value: '35' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                },
                {
                  property: 'paddingLeft',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '35' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                },
                {
                  property: 'borderRadius',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '50' },
                      unit: { type: 'string', value: '%' }
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
                name: [ 'search-btn ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'right',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'unset' }
                  }
                },
                {
                  property: 'left',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '50' },
                      unit: { type: 'string', value: '%' }
                    }
                  }
                },
                {
                  property: 'transform',
                  value: {
                    type: 'style_function',
                    value: {
                      type: 'style_function',
                      function: [
                        't', 'r', 'a',
                        'n', 's', 'l',
                        'a', 't', 'e'
                      ],
                      arguments: [ { type: 'string', value: '-50%,-50%' } ],
                      value: 'translate(-50%,-50%)'
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
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'hero-page ' ],
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
                unit: { type: 'string', value: 'vh - 60px' }
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
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-evenly' }
            }
          }
        ]
      }
    }
  ]
}