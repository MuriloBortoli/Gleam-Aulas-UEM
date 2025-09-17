import sgleam/check

/// Uma função que recebe *n*m, e cria uma lista de 0 ate *n*

pub fn crialista(n: Int) -> List(Int) {
    case n {
        _ if n < 0 -> [] 
        _ -> adiciona_fim(crialista(n - 1), n)
       
    }

}

pub fn crialista_examples() {
    check.eq(crialista(-1), [])
    check.eq(crialista(0), [0])
    check.eq(crialista(1), [0, 1])
    check.eq(crialista(4), [0, 1, 2, 3, 4])
}

/// Função que adiciona elementos no final da lista

pub fn adiciona_fim(lst: List(Int), a: Int) -> List(Int) {
    case lst {
        [] -> [a]
        [primeiro, ..resto] -> [primeiro, ..adiciona_fim(resto, a)]
    }
}