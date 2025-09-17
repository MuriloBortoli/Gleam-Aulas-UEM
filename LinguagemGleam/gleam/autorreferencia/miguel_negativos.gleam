import sgleam/check
/// Análise: Uma função que elimine numeros negativos de uma lista
/// Definição dos tipos de dados: *lst*: List(Int), retorna List(Int)
/// Especificação: função remove numeros nagativos de uma lista de inteiros
pub fn remove_negativo(lst: List(Int)) -> List(Int) {
    case lst {
        [] -> []
        [primeiro, ..resto] -> case primeiro >= 0 {
            True -> [primeiro, ..remove_negativo(resto)]
            False -> remove_negativo(resto)
        }
    }
}

pub fn remove_negativo_examples() {
    check.eq(remove_negativo([]), [])
    check.eq(remove_negativo([0, 1]), [0, 1])
    check.eq(remove_negativo([0, 1, -2]), [0, 1])
    check.eq(remove_negativo([-1, -2]), [])
}