import sgleam/check
import gleam/int

pub type Arvore(a) {
    Vazia
    No(valor: a, esq: Arvore(a), dir: Arvore(a))
}


pub fn altura(r: Arvore(a)) -> Int {
    case r {
        Vazia -> -1
        No(_, esq, dir) -> 1 + int.max(altura(esq), altura(dir))
        
}
}

pub fn altura_examples() {
    let t0 = No(10, Vazia, Vazia)
    let t1 = No(9, t0, Vazia)
    let t2 = No(7, No(8, Vazia, Vazia), t1)
    let t3 = No(4, No(3, Vazia, Vazia), Vazia)
    let t4 = No(3, t3, t2)
    check.eq(altura(Vazia), -1)
    check.eq(altura(t0), 0)
    check.eq(altura(t1), 1)
    check.eq(altura(t2), 2)
    check.eq(altura(t3), 1)
    check.eq(altura(t4), 3)
}