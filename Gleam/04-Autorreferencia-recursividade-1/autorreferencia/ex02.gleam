import sgleam/check
/// função que conta todos os elementos de uma lista
pub fn conta(lst: List(Int)) -> Int {
    case lst {
        [] -> 0
        [primeiro, ..resto] -> 1 + conta(resto)
    }
}

pub fn conta_examples() {
    check.eq(conta([]), 0)
    check.eq(conta([1]), 1)
    check.eq(conta([1, 8]), 2)
    check.eq(conta([1, 8, 19, 3999, 4, 6]) ,6)

}