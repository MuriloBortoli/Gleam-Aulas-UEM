import sgleam/check
/// Projete uma função que verifique se uma lista de números está em ordem crescente. Dica: use
/// dois casos base.

pub fn crescente(a: List(Int)) -> Bool {
    case a{
        [] -> True
        [_] -> True /// aqui está dizendo "se a lista tiver 1 elemento retorne True. [_] significa 1 elemento, não importa que tipo ele seja"
        [primeiro, segundo,  ..resto] -> case primeiro <= segundo {
            True -> True
            False -> False
        }
    }
}

pub fn crescente_examples() {
    check.eq(crescente([]), True)
    check.eq(crescente([1]), True)
    check.eq(crescente([2, 1]), False)
    check.eq(crescente([0, 1, 3]), True)
    check.eq(crescente([1, 2, 2]), True)
    
}