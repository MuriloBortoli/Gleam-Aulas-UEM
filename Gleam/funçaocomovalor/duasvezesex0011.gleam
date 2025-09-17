import sgleam/check
/// Projete a função duas_vezes que receba como parâmetro uma função de um parâmetro e retorne uma
/// função que aplique a função original duas vezes. Exemplo
/// > duas_vezes(fn(x) { x + 1 })(3)
/// 5

pub fn duas_vezes(f: fn(a) -> a) -> fn(a) -> a {
    fn(x: a) {
        f(f(x))
    }
}

pub fn duas_vezes_examples() {
    let somaum = fn(n: Int) {n + 1}
    let mult = fn(n: Int) {n * 2}
    check.eq(duas_vezes(somaum)(1), 3)
    check.eq(duas_vezes(mult)(4), 16)
}





pub fn tenta(f: fn(a) -> a) -> fn(a) -> a {
    fn(x) {
        f(f(x))
    }
}

pub fn tenta_examples() {
    let maisdois = fn(n: Int) {n + 2}
    check.eq(tenta(maisdois)(1), 5)
}