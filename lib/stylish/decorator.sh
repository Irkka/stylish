require_relative 'decorator/attributes'

function stylish_decorate() {
  string=$1
  styles=$2
  declare -A attributes
  create_attributes_hash

  local escape_sequence='\e['
  local style_code_string=$(stylish_encode_styles $styles)
  local reset_sequence="${escape_sequence}${attributes['reset_all']}m"

  echo -e "${escape_sequence}${style_code_string}m${string}${reset_sequence}"
}

function stylish_encode_styles() {
  styles=$1

  declare -A attributes
  create_attributes_hash
  local styles_array=$(echo $styles|tr ',' ' ')
  local code_string=''

  for style in $styles_array; do
    local style_code=${attributes[$style]}
    # if style_code length is zero, no match
    if ! [ ${#style_code} == 0 ]; then
      code_string="${code_string};${style_code}"
    fi
  done

  echo "${code_string#;}"
}

export -f stylish_decorate stylish_encode_styles
