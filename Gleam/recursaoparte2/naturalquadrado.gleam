import sgleam/check

/// Projete uma função que receba como entrada um número a e um número natural n  
/// e calcule o valor a^n
pub fn nat( valor: Int, n: Int) -> Int {
    case n {
        _ if n < 0 -> 0
        0 -> 1
        1 -> valor
        _ -> {valor * valor} * nat(valor, n - 2 )

    }
}

pub fn nat_examples() {
    check.eq(nat(1, -1), 0)
    check.eq(nat(4, 0), 1)
    check.eq(nat(2, 1), 2)
    check.eq(nat(2, 2), 4)
    check.eq(nat(3, 2), 9)
    check.eq(nat(2, 3), 8)
    check.eq(nat(2, 7), 128)
}