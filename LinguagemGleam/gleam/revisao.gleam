import gleam/string

pub fn ordem(a: Int, b: Int, c: Int) -> String {
  case a > b && b > c {
    True -> "Decrescente"
    False ->
      case a < b && b < c {
        True -> "Crescente"
        False -> "Sem ordem"
      }
  }
}

pub fn so_primeira_maiuscula(palavra: String) -> String {
  string.uppercase(string.slice(palavra, 0, 1))
  <> string.lowercase(string.slice(palavra, 1, string.length(palavra)))
}

/// Conta a quantidade de dígitos de *n*.
/// Se *n* é 0, então devolve zero.
/// Se *n* é menor que zero, então devolve a quantidade
/// de dígitos do valor absoluto de *n*.
pub fn quantidade_digitos(n: Int) -> Int {
  0
}

pub fn quantidade_digitos_examples() {
  check.eq(quantidade_digitos(123), 3)
  check.eq(quantidade_digitos(0), 1)
  check.eq(quantidade_digitos(-1519), 4)
}

pub fn dma_para_amd_examples() {
  check.eq(dma_para_amd("19/07/2023"), "2023/07/19")
  check.eq(dma_para_amd("01/01/1980"), "1980/01/01")
  check.eq(dma_para_amd("02/02/2002"), "2002/02/20")
}
