import gleam/string
import sgleam/check

///1) Projete uma função não recursiva que encontre todos
///  os nomes de uma lista de nomes que tenham mais que
/// cinco caracteres. Use a função string.length para determinar
///  o número de caracteres de uma string.
/// Definição dos tipos de dados:
/// List(String) -> List(Strings)
/// Especificação:
/// Retornará somente os nomes com MAIS de 5 caracteres
pub fn nomes_maior_cinco(lst: List(String)) -> List(String) {
  filtra(lst, string_maior_cinco)
}

/// Retorna nomes com caracter > 5
pub fn nomes_maior_cinco_examples() {
  check.eq(nomes_maior_cinco(["Murilo", "Ana", "Roberto"]), [
    "Murilo", "Roberto",
  ])
  check.eq(nomes_maior_cinco(["Bia", "", "Nilda"]), [])
}

pub fn filtra(lst: List(String), pred: fn(String) -> Bool) -> List(String) {
  case lst {
    [] -> []
    [p, ..r] ->
      case pred(p) {
        True -> [p, ..filtra(r, pred)]
        False -> filtra(r, pred)
      }
  }
}

pub fn string_maior_cinco(x: String) -> Bool {
  string.length(x) > 5
}

/// Verifica se o tamanho da string > 5
/// 2) Projete uma função não recursiva que receba como parâmetro uma lista de strings e
///  um índice i e devolva uma lista com o caractere na posição i
///  (ou vazio se o índice for inválido)
///  de cada string da lista. Use a função
/// string.slice para determinar o caractere no índice i de uma string.
/// Definição dos tipos de dados:
/// lst: List(String), i: Int, -> List(String)
/// 
/// Especificação:
/// Deverá retornar o caracter na posição especificada *i* de cada elemento da lista
pub fn get_caracter(lst: List(String), i: Int) -> List(String) {
  mapeia(lst, fn(a) -> String { string.slice(a, i, 1) })
}

pub fn get_caracter_examples() {
  check.eq(get_caracter(["abc"], 0), ["a"])
  check.eq(get_caracter(["Murilo", "Abelha", "Dinossauro"], 1), ["u", "b", "i"])
}

pub fn mapeia(lst: List(a), f: fn(a) -> b) -> List(b) {
  case lst {
    [] -> []
    [p, ..r] -> [f(p), ..mapeia(r, f)]
  }
}

/// Função map que aplica outra função a cada elemento individualmente
/// Análise: Projete uma função recursiva em cauda que conte quantas vezes
///  um elemento aparece em uma lista.
/// 
///  Definição dos tipos de dados 
/// lst: List(a), acc: Int -> Int
/// 
pub fn conta_elem(lst: List(a), acc: Int, x: a) -> Int {
  case lst {
    [] -> acc
    [p, ..r] ->
      case p == x {
        True -> conta_elem(r, acc + 1, x)
        False -> conta_elem(r, acc, x)
      }
  }
}

pub fn conta_elem_examples() {
  check.eq(conta_elem([1, 2, 3], 0, 1), 1)
  check.eq(conta_elem(["a", "b", "a"], 0, "a"), 2)
}
