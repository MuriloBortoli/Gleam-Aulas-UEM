pub fn concatena(lst: List(String)) ->  String {
    list.map(lst, con)
}
pub fn concatena_examples() {
    check.eq(concatena(["a", "b"]), "ab")
}




pub fn con(lst: List(String)) -> String {
    case lst {
        [] -> ""
        [p, ..r] -> p <> con(r)
    }
}