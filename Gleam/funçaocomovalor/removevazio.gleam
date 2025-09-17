import sgleam/check
///  Projete uma função que crie uma nova lista
///  removendo as strings vazias de uma lista de strings.
pub fn remove_vazio(lst: List(String)) -> List(String) {
    geral(lst, nao_vazio )
}

pub fn remove_vazio_examples() {
    check.eq(remove_vazio(["1", "", "2"]), ["1", "2"])
}

/// Aqui, usarei um filter, pois preciso "filtrar"
/// com base em um predicado, o predicado == vazio
pub fn geral(lst: List(a), pred: fn(a) -> Bool ) -> List(a) {
    case lst {
        [] -> []
        [p, ..resto] -> case pred(p) {
            True -> geral(resto, pred)
            False -> [p, ..geral(resto, pred)]
        }
    }
}
pub fn nao_vazio(s) -> Bool {
    s == ""
}