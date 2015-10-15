function snakecase(string) {
  gsub(/ /, "_", string)
  gsub(/-/, "_", string)
  gsub(/(<|>)/, "", string)
  return string
}

// {
  if ($2 != "<control>")
    print "\tunicode[\"" snakecase(tolower($2)) "\"] = \"" $1 "\""
}
