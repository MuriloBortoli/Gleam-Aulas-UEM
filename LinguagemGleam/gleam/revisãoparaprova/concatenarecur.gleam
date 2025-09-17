import gleam/string
import sgleam/check

/// Uma função que concatena todos os elementos de uma lista de strings
pub fn concatena(lst: List(String)) -> String {
  case lst {
    [] -> ""
    [primeiro, ..resto] -> primeiro <> concatena(resto)
  }
}

pub fn concatena_examples() {
  check.eq(concatena([]), "")
  check.eq(concatena(["a"]), "a")
  check.eq(concatena(["a", "b"]), "ab")
}
