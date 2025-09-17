import sgleam/check
import gleam/string

/// função que concatena todos os elementos de uma lista
pub fn concatena(lst: List(String) ) -> String {
    case lst {
        [] -> ""
        [primeiro, ..resto] -> primeiro <> concatena(resto)
    }
}

pub fn concatena_examples() {
    check.eq(concatena([]), "")
    check.eq(concatena(["abc"]), "abc")
    check.eq(concatena(["M", "abc"]), "Mabc")


}

