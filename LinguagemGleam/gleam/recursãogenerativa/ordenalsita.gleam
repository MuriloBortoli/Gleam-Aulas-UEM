import sgleam/check
import gleam/int
import gleam/list
/// Terei que utilizar o list.filter para pegar os elementos minimos 
pub fn ordena(lst: List(Int)) -> List(Int) {
    case lst {
        [] -> []
        [_, _..] -> todo
    }
}

pub fn ordena_examples() {
    check.eq(ordena([]), [])
    check.eq(ordena([2, 4, 1, 5]), [1, 2, 4, 5])
    
}


pub fn aux(lst: List(Int)) -> List(Int) {
    case lst {
        [] -> [] 
        [p, ..r] -> case p ==  encontra_min(lst) {
            True -> [p, ..aux(r)]
            False -> aux(r)
        }
    }

}
pub fn aux_examples() {
    check.eq(aux([3, 4, 1, 1]), [1, 1])

}




/// Função auxiliar que encontra o elemento minimo de uma lista
pub fn encontra_min(lst: List(Int)) -> Int {
    case lst {
        [] -> 0
        [p] -> p 
        [_, .._] -> {
            let tamanho = list.length(lst)
            let metade = tamanho / 2
            let #(metade1, metade2) = list.split(lst, metade)
            let max_metade1 = encontra_min(metade1)
            let max_metade2= encontra_min(metade2)
            int.min(max_metade1, max_metade2)

                }

    }
}