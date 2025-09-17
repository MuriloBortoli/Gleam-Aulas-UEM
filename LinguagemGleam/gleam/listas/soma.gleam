import sgleam/check 


pub type Lista {
    Vazia
    NaoVazia(primeiro: Int, resto: Lista)
}


pub fn soma(lst: Lista) -> Int {
    case lst {
        Vazia -> 0
        NaoVazia(primeiro, resto) -> primeiro + soma(resto)
    }
}


pub fn soma_examples() {
    check.eq(soma(Vazia), 0)
    check.eq(soma(NaoVazia(3, Vazia)), 3)
    check.eq(soma(NaoVazia(3, NaoVazia(2, NaoVazia(3, Vazia)))), 8)

}