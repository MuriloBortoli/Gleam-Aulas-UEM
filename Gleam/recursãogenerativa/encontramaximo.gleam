import sgleam/check
import gleam/int
import gleam/list

pub fn encontra_max(lst: List(Int)) -> Int {
    case lst {
        [] -> 0
        [p] -> p 
        [_, .._] -> {
            let tamanho = list.length(lst)
            let metade = tamanho / 2
            let #(metade1, metade2) = list.split(lst, metade)
            let max_metade1 = encontra_max(metade1)
            let max_metade2= encontra_max(metade2)
            int.max(max_metade1, max_metade2)

                }

    }
}

pub fn encontra_max_examples() {
    check.eq(encontra_max([1, 2, 3, 4]), 4)
    check.eq(encontra_max([1]), 1)
    check.eq(encontra_max([1, 4, 3, 2]), 4)}



