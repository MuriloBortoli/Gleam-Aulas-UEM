import sgleam/check
pub fn natura(n: Int, valor: Int) -> List(Int) {
    case n {
        _ if n < 0 -> [] 
        _ -> [n, ..natura(n, valor - 2)]
    }
}

pub fn natura_examples() {
    check.eq(natura(3, 5), [3, 3, 3, 3, 3])
}