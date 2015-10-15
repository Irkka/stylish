@include "stylish-decorator-attributes.awk"

function escape_code(attributes) {
  return "\033[" attributes "m"
}

function decorate(string, styles) {
  split(styles, style_array, ",")
  attribute_string = ""

  for (style in style_array) {
    attribute_string = attribute_string ";" attributes[style_array[style]]
  }

  { print escape_code(attribute_string) string }
}
