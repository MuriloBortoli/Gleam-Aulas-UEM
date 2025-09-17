import sgleam/check

pub fn repete(valor: Int, n: Int) -> List(Int) {
    case n {
        _ if n < 0 -> []
        0 -> []
        _ -> [valor, ..repete(valor, n - 1)]
    }
}