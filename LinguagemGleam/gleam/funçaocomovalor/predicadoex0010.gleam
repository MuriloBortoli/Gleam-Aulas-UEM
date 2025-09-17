import sgleam/check
import gleam/int
/// 10) Defina uma função que receba como parâmetro um predicado
///  (função de um argumento que retorna um valor booleano) e uma lista,
///  e conte quantos elementos da lista satisfazem o predicado. Exemplo
/// > conta([3, 1, 2, 4, 7], int.is_odd)
/// 3

/// Esse tipo de função é filter, onde me retornara os elementos,
/// ou o numero de elementos que correspondem ao predicado

pub fn  filtra(lst: List(a), pred: fn(a) -> Bool) -> Int {
    case lst {
        [] -> 0
        [p, ..resto] -> case pred(p) {
            True -> 1 + filtra(resto, pred)
            False -> filtra(resto, pred)
        }
    }
}

pub fn filtra_examples() {
    check.eq(filtra([1, 3, 4], int.is_odd), 2)
    check.eq(filtra(["a", "b", "", "c", ""], nao_vazio) , 2)
}

pub fn nao_vazio(s) -> Bool {
    s == ""
}