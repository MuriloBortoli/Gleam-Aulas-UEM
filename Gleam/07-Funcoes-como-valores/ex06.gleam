import sgleam/check
import gleam/int
/// Projete uma função que converta uma lista de números
/// para uma lista de strings (use a função
/// int.to_string)

pub fn converte(lst: List(Int)) -> List(String) {
    geral(lst, int.to_string)
}

pub fn converte_examples() {
    check.eq(converte([1, 2, 3]), ["1", "2", "3"])
}
/// Aqui utilizarei map, pois, devo pegar cada elemento
/// e aplicar outra função individualmente.

pub fn geral(lst: List(a), f: fn(a) -> b) -> List(b) {
    case lst {
        [] -> []
        [p, ..resto] -> [f(p), ..geral(resto, f)]
    }
}