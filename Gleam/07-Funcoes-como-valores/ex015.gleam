import sgleam/check
import gleam/int
/// 7) Projete uma função que determine a quantidade
///  de elementos de uma lista de números
pub fn quantidade(lst: List(Int)) -> Int {
    geral(lst, 0, int.add)
}

pub fn quantidade_examples() {
    check.eq(quantidade([1, 2, 3,]), 3)

}
/// Identifiquei que, essa função, é um fold_rigth.

pub fn geral(lst: List(a), init: b, f: fn(b, Int) -> b) -> b {
    case lst {
        [] -> init
        [p, ..resto] -> f(geral(resto, init, f), 1)
    }
}