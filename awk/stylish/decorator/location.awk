BEGIN {
  location[top_right] = "0;${COLUMNS}f"
  location[end_of_prompt] = "${COLUMNS}C"
  location[save] = "s"
  location[restore] = "u"
}
