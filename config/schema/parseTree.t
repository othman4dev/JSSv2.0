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
              type: 'escaped',
              value: { type: 'escaped', value: '0 0 6px 1px black' }
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
                number: { type: 'number', value: '20' },
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
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
            property: 'minHeight',
            value: {
              type: 'style_function',
              value: {
                type: 'style_function',
                function: [ 'c', 'a', 'l', 'c' ],
                arguments: [ { type: 'string', value: '100vh - 60px' } ],
                value: 'calc( 100vh - 60px )'
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
          },
          {
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
          name: [ 'big-title ' ],
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
            value: {
              type: 'word',
              value: { type: 'word', value: 'flex-start' }
            }
          },
          {
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '1' } }
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
          name: [ 'hidden-word ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'overflow',
            value: { type: 'word', value: { type: 'word', value: 'hidden' } }
          },
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
            property: 'display',
            value: {
              type: 'word',
              value: { type: 'word', value: 'inline-block' }
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
            name: [ 'big-hero-title' ],
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
                type: [ '.' ],
                name: [ 'hidden-word ' ],
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
                      number: { type: 'number', value: '200' },
                      unit: { type: 'string', value: 'px' }
                    }
                  }
                },
                {
                  property: 'marginRight',
                  value: {
                    type: 'number_unit',
                    value: {
                      type: 'number_unit',
                      number: { type: 'number', value: '5' },
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
            name: [ 'big-hero-title' ],
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
                type: [ '.' ],
                name: [ 'hidden-word ' ],
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
                  property: 'marginRight',
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
          type: [ '#' ],
          name: [ 'big-hero-title ' ],
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
                number: { type: 'number', value: '30' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
          name: [ 'hero-logos ' ],
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
          name: [ 'hero-logo ' ],
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
          type: [ '.' ],
          name: [ 'first-part ' ],
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
            property: 'gap',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
          name: [ 'second-part ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '1' } }
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
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
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
          },
          {
            property: 'maxWidth',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '650' },
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
          name: [ 'intro-title ' ],
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
          name: [ 'intro ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
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
            property: 'paddingTop',
            value: { type: 'number', value: { type: 'number', value: '0' } }
          },
          {
            property: 'padding',
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
            property: 'textIndent',
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
            property: 'fontSize',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '16' },
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
          name: [ 'get-started ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'border',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '45' },
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
                number: { type: 'number', value: '130' },
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
                number: { type: 'number', value: '10' },
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
          },
          {
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '500' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
          name: [ 'btn-wrapper ' ],
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
                number: { type: 'number', value: '25' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'paddingRight',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '90' },
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
          name: [ 'learn-more ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'border',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '45' },
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
                number: { type: 'number', value: '130' },
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
                number: { type: 'number', value: '10' },
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
          },
          {
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '500' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
          name: [ 'get-started' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'hover' }
            }
          ]
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#000' } }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.2' },
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
          type: [ '.' ],
          name: [ 'learn-more' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'hover' }
            }
          ]
        },
        propreties: [
          {
            property: 'boxShadow',
            value: {
              type: 'escaped',
              value: { type: 'escaped', value: '0 2.5px 0px 2px #000' }
            }
          },
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
                arguments: [ { type: 'string', value: '-2.5px' } ],
                value: 'translateY(-2.5px)'
              }
            }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.2' },
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
          name: [ 'modalStart ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'borderRadius',
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
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '80' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'position',
            value: { type: 'word', value: { type: 'word', value: 'fixed' } }
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
                arguments: [ { type: 'string', value: '-50%, -50%' } ],
                value: 'translate(-50%, -50%)'
              }
            }
          },
          {
            property: 'zIndex',
            value: { type: 'number', value: { type: 'number', value: '5' } }
          },
          {
            property: 'paddingBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '30' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'boxShadow',
            value: {
              type: 'escaped',
              value: { type: 'escaped', value: '0 0 8px 1px #00000020' }
            }
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
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.2' },
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
          type: [ '.' ],
          name: [ 'choices ' ],
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
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-evenly' }
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
          type: 'multi_selector',
          value: [
            {
              type: [ '.' ],
              name: [ 'choice1' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            {
              type: [ '.' ],
              name: [ 'choice2 ' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            }
          ]
        },
        propreties: [
          {
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '1' } }
          },
          {
            property: 'width',
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
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '240' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'flexDirection',
            value: { type: 'word', value: { type: 'word', value: 'column' } }
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
          name: [ 'modal-header ' ],
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
                number: { type: 'number', value: '100' },
                unit: { type: 'string', value: '%' }
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
          },
          {
            property: 'marginBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '20' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'position',
            value: {
              type: 'word',
              value: { type: 'word', value: 'relative' }
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
          name: [ 'modal-title ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'textAlign',
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
          type: [ '.' ],
          name: [ 'modal-content ' ],
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
                number: { type: 'number', value: '240' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'display',
            value: {
              type: 'word',
              value: { type: 'word', value: 'contents' }
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
          name: [ 'modal-title ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'margin',
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
          name: [ 'modal-desc ' ],
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
          type: [ '.' ],
          name: [ 'modal-btn ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'border',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '45' },
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
                number: { type: 'number', value: '100' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
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
          },
          {
            property: 'paddingInline',
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
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '500' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
          name: [ 'modal-btn' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'hover' }
            }
          ]
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#000' } }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.2' },
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
            name: [ 'getStarted' ],
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
                type: [],
                name: [ 'main ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'filter',
                  value: {
                    type: 'style_function',
                    value: {
                      type: 'style_function',
                      function: [ 'b', 'l', 'u', 'r' ],
                      arguments: [ { type: 'string', value: '5px' } ],
                      value: 'blur(5px)'
                    }
                  }
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
                name: [ 'modalStart ' ],
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
            name: [ 'closeModal' ],
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
                name: [ 'modalStart ' ],
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
                type: [],
                name: [ 'main ' ],
                indices: null,
                attributes: [],
                pseudoClasses: []
              },
              propreties: [
                {
                  property: 'filter',
                  value: {
                    type: 'word',
                    value: { type: 'word', value: 'none' }
                  }
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
          type: [ '#' ],
          name: [ 'closeModal ' ],
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
          },
          {
            property: 'fontSize',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '30' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#000' } }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
          name: [ 'hero2-title ' ],
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
                number: { type: 'number', value: '40' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'paddingInline',
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
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '20' },
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
          name: [ 'intro2 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'paddingInline',
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
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '20' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'textIndent',
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
            property: 'maxWidth',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '70' },
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
          name: [ 'part2-body ' ],
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
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-evenly' }
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
            property: 'padding',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
          name: [ 'code-img ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'minWidth',
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
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '240' },
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
                number: { type: 'number', value: '5' },
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
          name: [ 'part2-header ' ],
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
                number: { type: 'number', value: '20' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'width',
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
            property: 'textIndent',
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
          name: [ 'step ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '1' } }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'flexDirection',
            value: { type: 'word', value: { type: 'word', value: 'column' } }
          },
          {
            property: 'alignItems',
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
          type: [ '.' ],
          name: [ 'undertitle ' ],
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
                number: { type: 'number', value: '12' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'marginTop',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '-20' },
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
          name: [ 'section- ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'marginBottom',
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
      type: 'selector_block',
      stat: {
        type: 'selector_block',
        selector: {
          type: [ '.' ],
          name: [ 'img-title ' ],
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
                number: { type: 'number', value: '12' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'textAlign',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'marginTop',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '5' },
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
                number: { type: 'number', value: '70' },
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
          name: [ 'line ' ],
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
                number: { type: 'number', value: '90' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'backgroundColor',
            value: { type: 'color', value: { type: 'color', value: '#eee' } }
          },
          {
            property: 'boxShadow',
            value: {
              type: 'escaped',
              value: { type: 'escaped', value: '0 0 5px 1px #00000010' }
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
              value: { type: 'word', value: 'space-between' }
            }
          },
          {
            property: 'borderRadius',
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
            property: 'marginBottom',
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
          type: [ '.' ],
          name: [ 'step2 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '1' } }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'flexDirection',
            value: { type: 'word', value: { type: 'word', value: 'column' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'width',
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
          name: [ 'flex ' ],
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
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-between' }
            }
          },
          {
            property: 'gap',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
          name: [ 'illu2 ' ],
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
                number: { type: 'number', value: '200' },
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
          name: [ 'img-wrapper ' ],
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
            property: 'flexGrow',
            value: { type: 'number', value: { type: 'number', value: '1' } }
          },
          {
            property: 'width',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '30' },
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
          name: [ 'installation ' ],
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
                number: { type: 'number', value: '40' },
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
          name: [ 'chapter ' ],
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
          type: [ '.' ],
          name: [ 'installation-title ' ],
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
                number: { type: 'number', value: '40' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'paddingInline',
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
            property: 'marginBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '20' },
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
          name: [ 'chapter-title ' ],
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
                number: { type: 'number', value: '30' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'paddingInline',
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
            property: 'marginBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '20' },
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
          name: [ 'code ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#1e1e1e' }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#fff' } }
          },
          {
            property: 'position',
            value: {
              type: 'word',
              value: { type: 'word', value: 'relative' }
            }
          },
          {
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '7' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'min-height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '65' },
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
                number: { type: 'number', value: '30' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'paddingTop',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '34' },
                unit: { type: 'string', value: 'px' }
              }
            }
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
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'margin',
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
            property: 'position',
            value: {
              type: 'word',
              value: { type: 'word', value: 'relative' }
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
          name: [ 'circles ' ],
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
                number: { type: 'number', value: '10' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'left',
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
          type: [ '.' ],
          name: [ 'circle ' ],
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
                number: { type: 'number', value: '15' },
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
          name: [ 'circle1 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#ff5f56' }
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
          name: [ 'circle2 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#ffbd2e' }
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
          name: [ 'circle3 ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#27c93f' }
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
          name: [ 'li ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'marginBottom',
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
            property: 'marginTop',
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
            property: 'marginLeft',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
          name: [ 'ul ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'marginLeft',
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
          name: [ 'code-copy ' ],
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
            property: 'right',
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
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
          },
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#ffffff09' }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#888' } }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
                number: { type: 'number', value: '25' },
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
          },
          {
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '5' },
                unit: { type: 'string', value: 'px' }
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
          name: [ 'code-copy' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'hover' }
            }
          ]
        },
        propreties: [
          {
            property: 'backgroundColor',
            value: {
              type: 'color',
              value: { type: 'color', value: '#ffffff19' }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#aaa' } }
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.2' },
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
        function: { type: 'word', value: 'delay' },
        function_param: {
          type: 'number_unit',
          number: { type: 'number', value: '1' },
          unit: { type: 'string', value: 's' }
        },
        statements: [
          {
            type: 'selector_block',
            stat: {
              type: 'selector_block',
              selector: {
                type: [ '#' ],
                name: [ 'jssLogo ' ],
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
                      number: { type: 'number', value: '200' },
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
                      number: { type: 'number', value: '0.5' },
                      unit: { type: 'string', value: 's' }
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
          name: [ 'choices-wrapper ' ],
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
            value: {
              type: 'word',
              value: { type: 'word', value: 'space-evenly' }
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
          },
          {
            property: 'width',
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
            property: 'marginTop',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '25' },
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
          name: [ 'choice-doc ' ],
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
                number: { type: 'number', value: '50' },
                unit: { type: 'string', value: '%' }
              }
            }
          },
          {
            property: 'height',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '400' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'display',
            value: { type: 'word', value: { type: 'word', value: 'flex' } }
          },
          {
            property: 'flexDirection',
            value: { type: 'word', value: { type: 'word', value: 'column' } }
          },
          {
            property: 'alignItems',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
          },
          {
            property: 'textAlign',
            value: { type: 'word', value: { type: 'word', value: 'center' } }
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
          type: [ '.' ],
          name: [ 'choice-doc-desc ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'marginBottom',
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
          name: [ 'choice-doc-title ' ],
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
                number: { type: 'number', value: '20' },
                unit: { type: 'string', value: 'px' }
              }
            }
          },
          {
            property: 'color',
            value: { type: 'color', value: { type: 'color', value: '#333' } }
          },
          {
            property: 'paddingInline',
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
            property: 'marginBottom',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '20' },
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
          name: [ 'choice-btn ' ],
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
            property: 'border',
            value: { type: 'word', value: { type: 'word', value: 'none' } }
          },
          {
            property: 'borderRadius',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '500' },
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
                number: { type: 'number', value: '45' },
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
                number: { type: 'number', value: '230' },
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
                number: { type: 'number', value: '10' },
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
          },
          {
            property: 'transition',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '0.2' },
                unit: { type: 'string', value: 's' }
              }
            }
          },
          {
            property: 'cursor',
            value: { type: 'word', value: { type: 'word', value: 'pointer' } }
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
          name: [ 'choice-btn' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'mouseover' }
            }
          ]
        },
        propreties: [
          {
            property: 'boxShadow',
            value: {
              type: 'escaped',
              value: { type: 'escaped', value: '0 2.5px 0px 2px #333' }
            }
          },
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
                arguments: [ { type: 'string', value: '-2.5px' } ],
                value: 'translateY(-2.5px)'
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
          name: [ 'choice-btn' ],
          indices: null,
          attributes: [],
          pseudoClasses: [
            {
              type: 'pseudo_class',
              value: { type: 'string', value: 'mouseout' }
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
                arguments: [ { type: 'string', value: '0px' } ],
                value: 'translateY(0px)'
              }
            }
          },
          {
            property: 'boxShadow',
            value: {
              type: 'escaped',
              value: {
                type: 'escaped',
                value: '0 0 0 3px #fff, 0 0 0 5px #ff0'
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
          name: [ 'soon ' ],
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
                number: { type: 'number', value: '50' },
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
          name: [ 'soon-feature ' ],
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
          type: [ '.' ],
          name: [ 'code-jss ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'maxHeight',
            value: {
              type: 'number_unit',
              value: {
                type: 'number_unit',
                number: { type: 'number', value: '400' },
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
          name: [ 'chapter-desc ' ],
          indices: null,
          attributes: [],
          pseudoClasses: []
        },
        propreties: [
          {
            property: 'textIndent',
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
      type: 'media',
      stat: {
        type: 'media',
        condition: 'screen and (max-width: 768px) ',
        value: [
          {
            type: 'selector_block',
            selector: {
              type: [ '#' ],
              name: [ 'modalStart ' ],
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
                    number: { type: 'number', value: '90' },
                    unit: { type: 'string', value: '%' }
                  }
                }
              }
            ]
          }
        ]
      }
    },
    {
      type: 'keyframes',
      stat: {
        type: 'keyframes',
        name: { type: 'word', value: 'fadeIn' },
        value: [
          {
            type: 'selector_block',
            selector: {
              type: [],
              name: [ 'from ' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            propreties: [
              {
                property: 'opacity',
                value: {
                  type: 'number',
                  value: { type: 'number', value: '0' }
                }
              }
            ]
          },
          {
            type: 'selector_block',
            selector: {
              type: [],
              name: [ 'to ' ],
              indices: null,
              attributes: [],
              pseudoClasses: []
            },
            propreties: [
              {
                property: 'opacity',
                value: {
                  type: 'number',
                  value: { type: 'number', value: '1' }
                }
              }
            ]
          }
        ]
      }
    }
  ]
}