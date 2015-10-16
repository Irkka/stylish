require_relative 'symbol/unicode'

function stylish_symbol() {
  local symbol_identifier=$1

  declare -A unicode
  create_unicode_hash
  local symbol_hex="${unicode[$symbol_identifier]}"
  local escape_sequence=""

  # symbol hexadecimal length zero
  if [[ ${#symbol_hex} == 0 ]]; then
    exit 1
  fi

  if [[ ${#symbol_hex} > 4 ]]; then
    escape_sequence="\U"
  else
    escape_sequence="\u"
  fi

  echo -e "${escape_sequence}${symbol_hex}"
}

export -f stylish_symbol
