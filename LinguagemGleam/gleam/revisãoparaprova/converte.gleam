import sgleam/check
import gleam/int


/// Função que converte uma lista de numeros para uma lista de string
pub fn converte(lst: List(Int)) -> List(String) {
    case lst {
        [] -> [] 
        [primeiro, ..resto] -> [int.to_string(primeiro), ..converte(resto)]
    }
}


pub fn converte_examples() {
    check.eq(converte([]), [])
    check.eq(converte([0]), ["0"])
    check.eq(converte([1, 2, 0]), ["1", "2", "0"])
}