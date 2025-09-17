import sgleam/check
/// Projete uma função que calcule todos os possíveis pares entre os elementos
/// de duas listas. Dica: projete uma função auxiliar que crie os pares
/// entre um elemento e os elementos de uma lista.

pub fn cria_par(elem: Int, lst: List(Int)) -> List(List(Int)) {
    case lst {
        [] -> []
        [primeiro, ..resto] -> [[elem, primeiro], ..cria_par(elem, resto)] 
    }
}

pub fn cria_par_examples() {
    check.eq(cria_par(1, []), [])
    check.eq(cria_par(1, [1]), [[1, 1]])
    check.eq(cria_par(1, [1, 2]), [[1, 1], [1, 2]])

}

pub fn cria_par_lista(lsta: List(Int), lstb: List(Int)) -> List(List(Int)) {
    case lsta, lstb {
        [], [] -> []
        [_, ..], [] -> []
        [], [_, ..] -> []
        [a, ..ra], [_, ..] -> {cria_par(a, lstb) cria_par_lista(ra, lstb)}    

    }
}

pub fn cria_par_lista_examples() {
    check.eq(cria_par_lista([], []), [])
    check.eq(cria_par_lista([1], []), [])
    check.eq(cria_par_lista([], [1]), [])
    check.eq(cria_par_lista([1], [2]), [[1, 2]])
    check.eq(cria_par_lista([2, 3], [4, 5]), [[2 ,4], [2, 5], [3, 4], [2, 5]])


}