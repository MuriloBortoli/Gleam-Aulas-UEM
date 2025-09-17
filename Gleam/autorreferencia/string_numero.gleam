import gleam/int
import sgleam/check
/// Projete uma função que crie uma lista de números a partir de uma lista de strings convertendo cada
/// string para um número (use a função int.parse).

pub fn convertendo(lst: List(String)) -> Result(List(Int), Nil) {
    case lst {
        [] -> Ok([])
        [primeiro, ..resto] -> [int.parse(primeiro), convertendo(resto)]
        
    }
}

pub fn convertendo_examples() {
    check.eq(convertendo([""]), Ok([]))
    check.eq(convertendo(["0"]), Ok([0]))
    check.eq(convertendo(["0", "1", "2"]), Ok([0, 1, 2]))
}