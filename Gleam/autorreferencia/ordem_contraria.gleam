import sgleam/check
/// Defina uma função que que receba como entrada uma lista e devolva uma lista com os mesmos elementos
/// da entrada mas em ordem contrária. Dica: projete uma função auxiliar para adicionar um elemento
/// no final de uma lista.
/// em gleam, só é possivel adicionar elementos no inicio da lista
/// let a = [1, 2 , 3]
/// let b = [5, 6, ..a]
/// [5, 6, 1, 2, 3]

pub fn ordem_contra(a: List(Int)) -> List(Int) {
    case a {
        [] -> []
        [primeiro, ..resto] -> insere_final(ordem_contra(resto), primeiro)  
        
    }
}

pub fn ordem_contra_examples() {
    check.eq(ordem_contra([]), [])
    check.eq(ordem_contra([1, 2, 3]), [3, 2, 1])
    
    
}

pub fn insere_final(lst: List(Int), a: Int) -> List(Int) {
    case lst {
        [] -> [a]
        [primeiro, ..resto] -> [primeiro, ..insere_final(resto, a)]
        
    }
}