import sgleam/check

/// Uma função que determina a quantidade de elementos de uma lista de numeros

pub fn conta(lst: List(Int)) -> Int {
    case lst {
        [] -> 0 
        [_, ..resto] -> 1 + conta(resto) 
    }
}

pub fn conta_examples() {
    check.eq(conta([]), 0)
    check.eq(conta([3]), 1)
    check.eq(conta([7, 3, 2, 1]), 4)
}