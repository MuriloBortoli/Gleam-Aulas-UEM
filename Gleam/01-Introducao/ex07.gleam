import sgleam/check
import gleam/string
/// Faça uma função chamada so_primeira_maiuscula que recebe uma palavra não vazia (string) como
/// parâmetro e crie uma nova string convertendo a primeira letra da palavra para maiúscula e o restante da
/// palavra para minúscula. Use o método de substituição para verificar se a função funciona corretamente
/// de acordo com os exemplos a seguir. Confira as respostas no modo interativo. Veja as funções
/// string.slice, string.uppercase e string.lowercase.
pub fn so_primeira_maiuscula(palavra: String) -> String {
  string.uppercase(string.slice(palavra, 0, 1))
  <> string.lowercase(string.slice(palavra, 1, string.length(palavra)))
}


pub fn so_primeira_maiuscula_examples() {
  check.eq(so_primeira_maiuscula("murilo"), "Murilo")
  check.eq(so_primeira_maiuscula("CADEADO"), "Cadeado")
  
}