import sgleam/check


/// Função que calcula numero de nó folha de uma arvore binaria


pub type Arvore(a) {
    Vazia
    No(valor: a, esq: Arvore(a), dir: Arvore(a))
}

pub fn contano(r: Arvore(a)) -> Int {
    case r {0
        Vazia -> 0 
        No(_, esq, dir) -> case esq, dir {
            Vazia, Vazia -> 1
            _, _ -> contano(esq) + contano(dir)
        }
        
    }
}

pub fn contano_examples() {
    let t0 = No(10, Vazia, Vazia)
    let t1 = No(9, t0, Vazia)
    let t2 = No(7, No(8, Vazia, Vazia), t1)
    let t3 = No(4, No(3, Vazia, Vazia), No(2, Vazia, Vazia))
    let t4 = No(3, t3, t2)
    check.eq(contano(Vazia), 0)
    check.eq(contano(t0), 1)
    check.eq(contano(t1), 1)
    check.eq(contano(t2), 2)
    check.eq(contano(t3), 2)
    check.eq(contano(t4), 4)
    

}
