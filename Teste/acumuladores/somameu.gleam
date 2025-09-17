/// Soma os elementos de *lst*.
pub fn soma(lst: List(Int)) -> Int {
    soma_acc(lst, 0)
}

pub fn soma_acc(lst: List(Int), acc: Int) -> Int {
    case lst {
        [] -> acc
        [p, ..resto] -> soma_acc(resto, acc + p)

    }
}
