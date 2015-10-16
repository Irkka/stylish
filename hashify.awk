function snakecase(string) {
  gsub(/ /, "_", string)
  gsub(/-/, "_", string)
  gsub(/(<|>)/, "", string)
  return string
}

BEGIN {
  { print "declare -A unicode=( \\" }
}

END {
  { print ")" }
}

// {
  if ($2 != "<control>")
    print "[\'" snakecase(tolower($2)) "\']=\'" $1 "\' \\"
}
