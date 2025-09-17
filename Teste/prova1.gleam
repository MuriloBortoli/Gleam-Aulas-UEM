import gleam/string
import sgleam/check

/// Questão 1
pub fn eh_reveillon(data: String) -> Bool {
  string.slice(data, 5, 2) == "12" && string.slice(data, 8, 2) == "31"
}

pub fn eh_reveillon_examples() {
  check.eq(eh_reveillon("2024/12/31"), True)
  check.eq(eh_reveillon("2000/01/31"), False)
  check.eq(eh_reveillon("2001/12/30"), False)
}

/// Questão 2
/// eh_reveillon("2000/12/30")
/// string.slice("2000/12/30", 5, 2)  == "12" && string.slice("2000/12/30", 8, 2) == "31"
/// string.slice("12") == "12" && string.slice("2000/12/30", 8, 2) == "31"
/// True && string.slice("2000/12/30", 8, 2) == "31"
/// True && string.slice("31") == "31"
/// True && True
/// True
/// Questão 3
/// Análise
/// Uma função que recebe uma palavra e só exibe no maximo 5 caracteres, caso ultrapasse
/// adiciona "..." no final da frase, e caso sobre espaços, completa com espaços em branco
/// 
/// Definição dos tipos de dados
/// Recebe *palavra* como String, e retorna uma String
/// 
/// Especificação
/// A função recebe *palavra*, e caso tenha mais que 5 caracteres, exibe o que coube
/// e adiciona "..." no final. Se sobrou espaços, completa com espaço em branco
pub fn tres_pontos(palavra: String) -> String {
  case string.length(palavra) == 5 {
    True -> palavra
    False ->
      case string.length(palavra) > 5 {
        True -> string.slice(palavra, 0, 2) <> "..."
        False ->
          string.slice(palavra, 0, string.length(palavra))
          <> string.repeat(" ", 5 - string.length(palavra))
      }
  }
}

pub fn tres_pontos_examples() {
  check.eq(tres_pontos("murilo"), "mu...")
  check.eq(tres_pontos("chave"), "chave")
  check.eq(tres_pontos("oi"), "oi   ")
}
