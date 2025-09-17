import sgleam/check

pub type Lista {
    Vazia
    NaoVazia(primeiro: Int, resto: Lista)
}

pub fn verifica(lst: Lista, a: Int) -> Bool {
    case lst {
        Vazia -> False
        NaoVazia(primeiro, resto) -> case primeiro == a {
            True -> True
            False -> verifica(resto, a)
        }
    }
}


pub fn verifica_examples() {
    check.eq(verifica(Vazia, 3), False)
    check.eq(verifica(NaoVazia(3, Vazia), 2), False)
    check.eq(verifica(NaoVazia(2, NaoVazia(4, Vazia)), 2), True)

}


/// agora vou utilizar *List*

pub fn list(lst: List(Int), a: Int) -> Bool {
    case lst {
        [] -> False
        [primeiro, ..resto] -> case primeiro == a {
            True -> True
            False -> list(resto, a)
        }

    }
}

pub fn list_examples() {
    check.eq(list([], 3), False)
    check.eq(list([1], 3), False)
    check.eq(list([1,3], 3), True)
    
    
}