import sgleam/check

pub fn soma_dentro(lst: List(Int), a: Int) -> List(Int) {
    case lst {
        [] -> []
        [primeiro, ..resto] -> [primeiro + a, ..soma_dentro(resto, a)]
    }
}

pub fn soma_dentro_examples() {
    check.eq(soma_dentro([], 1), [])
    check.eq(soma_dentro([1], 1), [2])
    check.eq(soma_dentro([1,4,3], 2), [3,6,5])
}