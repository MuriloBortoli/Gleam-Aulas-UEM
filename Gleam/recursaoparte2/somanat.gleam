import sgleam/check

/// Uma função que recebe N, e soma todos os numeros ate N.
/// N = 5
/// 0 + 1 + 2 + 3 + 4 + 5
pub fn somanat(n: Int) -> Int {
    case n {
        _ if n < 0 -> 0 
        0 -> 0 
        _ -> n + somanat(n - 1)
        
    }
}

pub fn somanat_examples() {
    check.eq(somanat(-1), 0)
    check.eq(somanat(0), 0)
    check.eq(somanat(1), 1)
    check.eq(somanat(2), 3)
    check.eq(somanat(3), 6)
}