import sgleam/check
import gleam/string
/// Projete uma função que concatene todos os elementos de uma lista de strings
/// Farei primeiro em formato recusrivo, depois irei generalizar.
pub fn concatena_elem(lst: List(String)) -> String {
    geral(lst, "", string.append)
}

pub fn concatena_elem_examples() {
    check.eq(concatena_elem(["ab", "cd"]), "abcd")

}

pub fn geral(lst: List(a), init: b, f: fn(b, a) -> b ) -> b {
    case lst {
        [] -> init
        [p, ..resto] -> f(geral(resto, init, f), p)
    }
}