import sgleam/check

/// Faça uma função chamada tem_tres_digitos que recebe um número natural n e verifica se n tem
/// exatamente 3 dígitos. Não use case. Use o método de substituição para verificar se a função funciona
/// corretamente de acordo com os exemplos a seguir. Confira as respostas no modo interativo.
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

pub fn ordem_examples() {
  check.eq(ordem(4, 2, 1), "Decrescente")
  check.eq(ordem(5, 7, 2), "Sem ordem")
  check.eq(ordem(2, 4, 8), "Crescente")
}