@include "stylish-symbol-unicode.awk"

function print_symbol(symbol_identifier) {
  unicode_symbol_hex = unicode[symbol_identifier]

  if ( length(unicode_symbol_hex) == 0 )
    exit
  else if ( length(unicode_symbol_hex) > 4 )
    unicode_symbol = "\\U" unicode_symbol_hex
  else
    unicode_symbol = "\\u" unicode_symbol_hex
  { print unicode_symbol }
}
