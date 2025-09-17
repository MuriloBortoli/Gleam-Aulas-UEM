import sgleam/check

/// Função que verifica se uma lista de numeros está em ordem crescente.
/// Dica: use dois casos base

pub fn crescente(lst: List(Int)) -> Bool {
    case lst {
        [] -> False
        [_] -> True
        [primeiro, segundo, ..resto] -> case primeiro < segundo {
            True -> True
            False -> crescente(resto) 
        }
    }
}


pub fn crescente_examples() {
    check.eq(crescente([]), False)
    check.eq(crescente([0]), True)
    check.eq(crescente([1, 0]), False)
    check.eq(crescente([0, 1, 4]), True)
}