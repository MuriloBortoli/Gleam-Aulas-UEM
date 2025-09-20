import gleam/string
import gleam/int
import sgleam/check
/// Conta a quantidade de dígitos de *n*.
/// Se *n* é 0, então devolve zero.
/// Se *n* é maior  que zero, então devolve a quantidade
pub fn quantidade_digitos(n: Int) -> Int {
    n 
    |> int.to_string()
    |> string.length()

    }
     
  


pub fn quantidade_digitos_examples() {
    check.eq(quantidade_digitos(25), 2)
    check.eq(quantidade_digitos(3), 1)
    check.eq(quantidade_digitos(-1245), 4)
}