import sgleam/check
import gleam/int
import gleam/string
/// Análise: Ajustar uma lista de nomes,
/// para que fiquem todos com o mesmo tamanho,
/// com o tamanho baseado no tamanho do maior nome da lista.
/// Caso falte caractere, devo completar com espaço vazio.
/// Devo fazer um list.map para encontrar o maior nome da lista,
/// depois um list.fold para ajustar cada nome individualmente.

/// Definição dos tipos de dados: list.map -> lst: List(String), f: fn(a) -> b, 
/// que retorna um Int(tamanho do maior nome)
/// 
/// 
pub fn map(lst: List(Int), f: fn(a) -> b) List(b) {
    case lst {
        [] -> []
        [p, ..resto] -> [f(p), ..map(resto, f)]
    }
}
pub fn fold(lst: List(a), init: b, f: fn(b, a) -> b) b {
    case lst {
        [] -> init
        [p, ..resto] -> 
    }
}

pub fn tamanho(lst: List(String)) -> Int {
    case lst {
        [] -> 0
        [p, ..resto] -> int.max(string.length(p), tamanho(resto))


    }
}

pub fn tamanho_examples() {
    check.eq(tamanho([]), 0)
    check.eq(tamanho(["Murilo", "Giulia", "Theodoro"]), 8)
}


pub fn ajusta(lst: List(String)) -> List(String) {
    let max = tamanho(lst) 
    case lst {
        [] -> []
        [p, ..resto] -> case string.length(p) == max {
            True -> [p, ..ajusta(resto)]
            False -> [p <> string.repeat(" ", max - string.length(p)), ..ajusta(resto)]
        }
    }
}