import sgleam/check

/// Função que remove string vazia de uma lista de string


pub fn remove(lst: List(String)) -> List(String) {
    case lst {
        [] -> [] 
        [primeiro, ..resto] -> case primeiro != "" {
            True -> [primeiro, ..remove(resto)]
            False -> remove(resto)
        } 
    }
}

pub fn remove_examples() {
    check.eq(remove([]), [])
    check.eq(remove([""]), [])
    check.eq(remove(["2"]), ["2"])
    check.eq(remove(["2", "Murilo"]), ["2", "Murilo"])
    check.eq(remove(["2", "", "Murilo"]), ["2", "Murilo"])
}
