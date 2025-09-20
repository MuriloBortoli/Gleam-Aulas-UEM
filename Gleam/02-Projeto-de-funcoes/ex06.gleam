import sgleam/check
import gleam/string
/// Se o numero de caracteres de *nome* é menor ou igual a 4
/// Retorna "Curto", se for <= 10, retorna "Medio"
/// Se maior que 10, "Longo"
pub fn tamanho_nome(nome: String) -> String {
  case string.length(nome) <= 4 {
    True -> "Curto"
    False ->
      case string.length(nome) <= 10 {
        True -> "Médio"
        False -> "Longo"
    }
  }
}

pub fn tamanho_nome_examples() {
    check.eq(tamanho_nome("Murilo"), "Médio")
    check.eq(tamanho_nome("Ana"), "Curto")
    check.eq(tamanho_nome("Roberto Tavares"), "Longo")
}