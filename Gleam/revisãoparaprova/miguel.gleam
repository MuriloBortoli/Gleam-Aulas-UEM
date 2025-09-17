import sgleam/check

/// Análise: Produzir uma função que remove elementos negativos de uma lista

/// Definição dos tipos de dados: *lst* : List(Int), retorna uma List(Int)

/// Especificação:
/// Remove numeros < 0 de *lst*.
pub fn remove(lst: List(Int)) -> List(Int) {
    case lst {
        [] -> []
        [primeiro, ..resto] -> case primeiro >= 0 {
            True -> [primeiro, ..remove(resto)]
            False -> remove(resto)
        } 
    }
}

pub fn remove_examples() {
    check.eq(remove([]), [])
    check.eq(remove([1, 0]), [1, 0])
    check.eq(remove([1, -3, 2]), [1, 2])
    check.eq(remove([-1]), [])
    
}