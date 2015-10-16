require_relative '../../stylish'

function stylish_cli_start() {
  stylish_decorate $(stylish_symbol $1) $2
}
