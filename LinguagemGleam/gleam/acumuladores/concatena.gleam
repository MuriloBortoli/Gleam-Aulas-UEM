import sgleam/check
pub fn concatena(lst: List(String)) -> String {
    concatena_acc(lst, "")
}
pub fn concatena_examples() {
    check.eq(concatena(["a", "b"]), "ab")
}

pub fn concatena_acc(lst: List(String), acc: String) -> String {
    case lst {
        [] -> acc
        [p, ..r] -> concatena_acc(r, acc <> p)
    }
}