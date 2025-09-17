import sgleam/check
/// Projete uma função que determine a quantidade
///  de elementos de uma lista de números.

pub fn quantidade(lst: List(a)) -> Int {
    quantidade_acc(lst, 0)
}

pub fn quantidade_examples() {
    check.eq(quantidade([1, 2, 3, 5]), 4)
    check.eq(quantidade(["a", "b", "c"]), 3)

}

pub fn quantidade_acc(lst: List(a), acc: Int) -> Int {
    case lst {
        [] -> acc
        [p, ..r] -> quantidade_acc(r, acc + 1)
    }
}