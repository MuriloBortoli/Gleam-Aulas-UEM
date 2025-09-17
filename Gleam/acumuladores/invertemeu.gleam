/// Inverte os elementos de *lst*.
pub fn inverte(lst: List(a)) -> List(a) {
    case lst {
        [] -> []
        [p, ..r] -> list.append(inverte(r), [p])
}
}

pub fn inverte_acc(lst: List(a), acc: a) -> List(a) {
    case lst {
        [] -> []
        [p, ..r] -> []
    }
}