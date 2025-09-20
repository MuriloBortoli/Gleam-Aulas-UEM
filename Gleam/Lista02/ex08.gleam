import sgleam/check

/// Análise
/// Uma função que encontra o máximo entre 3 numeros 
/// Definição dos tipos de dados
/// Recebe *a* : Int, *b*: Int, *c*: Int, e retorna Int
/// Especificação
/// A função recebe 3 numeros *a*, *b*, *c* e retorna o maior entre eles
pub fn maximo_tres_numeros(a: Int, b: Int, c: Int) -> Int {
  case a > b && a > c {
    True -> a
    False ->
      case b > a && b > c {
        True -> b
        False -> c
      }
  }
}

pub fn maximo_tres_numeros_examples() {
  check.eq(maximo_tres_numeros(3, 4, 5), 5)
  check.eq(maximo_tres_numeros(-2, 0, 1), 1)
  check.eq(maximo_tres_numeros(0, 0, 0), 0)
}
