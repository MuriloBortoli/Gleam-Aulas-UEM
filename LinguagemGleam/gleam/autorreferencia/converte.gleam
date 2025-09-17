import sgleam/check
import gleam/int
/// função que converte uma lista de numeros para lista de string (int.to_string)

pub fn converte(a: List(Int)) -> List(String) {
    case a {
        [] -> []
        [primeiro, ..resto] -> [int.to_string(primeiro), ..converte(resto)]
    }
}

pub fn converte_examples() {
    check.eq(converte([]), [])
    check.eq(converte([1]), ["1"])
    check.eq(converte([1, 2]), ["1", "2"])
    
}