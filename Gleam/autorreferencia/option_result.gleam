import gleam/option.{type Option, Some, None}
import sgleam/check
import gleam/string

pub fn dividir(a: Int, b: Int) -> Result(Int, String) {
    case b == 0 {
        True -> Error("Divisão por 0")
        False -> Ok(a / b )
    }

}


pub fn dividir_examples() {
    check.eq(dividir(2, 2), Ok(1))
    check.eq(dividir(2, 1), Ok(2))
    check.eq(dividir(4, 0), Error("Divisão por 0"))

}


pub fn primeira(a: Option(String)) -> Option(String) {
    case a {
        None -> None
        Some(a) -> Some(string.slice(a, 0, 1))
    }

}

pub fn primeira_examples() {
    check.eq(primeira(Some("Abóbora")), Some("A"))
    check.eq(primeira(Some("")), Some(""))
    check.eq(primeira(None), None)
        

}