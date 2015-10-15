BEGIN {
  command = ARGV[1]
  switch (command) {
    case "symbol":
      symbol_identifier = ARGV[2]
      styles = ARGV[3]
      { print decorate(get_symbol(symbol_identifier), styles) escape_code(attributes[reset_all]) }
      break
    case "decorate":
      string = ARGV[2]
      styles = ARGV[3]
      { print decorate(string, styles) escape_code(attributes[reset_all]) }
      break
    default:
      { print "Invalid stylish command." }
      exit
  }
}
