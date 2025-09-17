import gleam/string
import sgleam/check

/// Análise
/// Uma função que recebe uma string e um numero positivo n, e substitue n caracteres da palavra por "x"
/// Definição dos tipos de dados
/// Recebe *frase* : String, *n* : Float, e retonar uma String
/// Especificação
/// A função *frase* como string e *n* como float, e substitue *n* caracteres da *frase* por "X"
pub fn censura(frase: String, n: Float) -> String {
    let palavra = string.slice(frase, 0, n)
    palavra <> "x" *. n
}