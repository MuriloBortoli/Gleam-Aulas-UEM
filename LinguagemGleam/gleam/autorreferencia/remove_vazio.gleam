import sgleam/check

/// função que cria uma nova lista, removendo as strings vazias da antiga lista

pub fn remove(a: List(String)) -> List(String) {
    case a {
        [] -> []
        [primeiro, ..resto] -> case primeiro == "" {
            True -> remove(resto)
            False -> [primeiro, ..remove(resto)]
        }
    }
}

pub fn remove_examples() {
    check.eq(remove([]), [])
    check.eq(remove(["a"]), ["a"])
    check.eq(remove(["a", ""]), ["a"])
    check.eq(remove(["a", "", "b"]), ["a", "b"])
}