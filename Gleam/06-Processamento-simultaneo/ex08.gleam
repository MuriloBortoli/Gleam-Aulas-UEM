import sgleam/check
/// Devolve o elemento na posição *i* de *lst*
/// (indexado a partir de 0). Devolve Error(Nil)
/// se *i* é negativo ou é maior ou igual a
/// quantidade de elemento de *lst*.

pub fn lista_get(lst: List(Int), k: Int) -> Result(Int, Nil) {
    case lst, k {
        [], _ -> Error(Nil)
        _, _ if k < 0 -> Error(Nil)
        [primeiro, ..], 0, -> Ok(primeiro)
        [_, ..resto], _ -> {lista_get(resto, k - 1)}
         

    }
}

pub fn lista_get_examples() {
    // [], 0
    check.eq(lista_get([], 0), Error(Nil))
    // [], > 0
    check.eq(lista_get([], 2), Error(Nil))
    // [_, ..], 0
    check.eq(lista_get([3, 2, 8], 0), Ok(3))
    // [_, ..], > 0
    check.eq(lista_get([3, 2, 8, 10], 2), Ok(8))
    check.eq(lista_get([3, 2, 8, 10], 4), Error(Nil))
    // [], < 0
    check.eq(lista_get([], -1), Error(Nil))
    // [_, ..], < 0
    check.eq(lista_get([1, 2], -3), Error(Nil))
}
