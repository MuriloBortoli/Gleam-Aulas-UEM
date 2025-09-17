import gleam/string

pub fn comeco_fim_igual(palavra: String) -> Bool {
  string.slice(palavra, 0, 1) != ""
  && string.slice(palavra, 0, 1) == string.slice(palavra, -1, 1)
}

/// comeco_fim_igual("agua" <> "boa")
/// comeco_fim_igual("aguaboa")
/// "aguaboa" != "" && string.slice("aguaboa", 0, 1) == string.slice("aguaboa", -1, 1)
/// True && string.slice("aguaboa", 0, 1) == string.slice("aguaboa", -1, 1)
/// string.slice("aguaboa", 0, 1) == string.slice("aguaboa", -1, 1)
/// "a" == string.slice("aguaboa", -1, 1)
/// "a" == "a"
/// True
/// Análise
/// Uma função que adiciona o nono dígito no numero de telefone caso necessário
/// Tipos de dados
/// Recebe *numero* como uma string, e retorna uma string
/// Especificação
pub fn nono_digito(numero: String) -> String {
  case string.length(numero) < 15 {
    True ->
      string.slice(numero, 0, 5)
      <> "9"
      <> string.slice(numero, 5, string.length(numero))
    False -> numero
  }
}
/// Recebe *numero* no formato (dd) 0000-0000, e adiciona o nono digito caso necessário
