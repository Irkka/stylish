function stylish_cli_start() {
  echo -e $(awk -f 'stylish.awk' "$@")
}
