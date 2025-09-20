import sgleam/check

/// Projete uma função que receba como parâmetro um número natural n e calcule o produto dos números
/// 1, 2, · · · , n

pub fn produto(n: Int) -> Int {
    case n {
        _ if n < 0 -> 0 
        0 -> 1 
        _ -> n * produto(n - 1) 
        
    }
}

pub fn produto_examples() {
    check.eq(produto(-1), 0)
    check.eq(produto(0), 0)
    check.eq(produto(1), 1)
    check.eq(produto(2), 2)
    check.eq(produto(4), 24)
}

