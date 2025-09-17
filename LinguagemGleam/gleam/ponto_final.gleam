import gleam/string
import sgleam/check

/// Análise:
/// Uma função que recebe uma frase, e adiciona um ponto final caso ela nao termine com ponto final
/// Definição de tipos de dados
/// Recebe como entrada *frase* do tipo String, e retorna uma String
/// Especificação
/// Recebe *frase* e adiciona "." no final caso *frase* não termine com "."
pub fn ponto_final(frase: String) -> String {
  case string.slice(frase, -1, 1) == "." {
    True -> frase
    False -> frase <> "."
  }
}

pub fn ponto_final_examples() {
  check.eq(ponto_final("murilo"), "murilo.")
  check.eq(ponto_final("abacate."), "abacate.")
  check.eq(ponto_final("."), ".")
  check.eq(ponto_final(""), ".")
}

