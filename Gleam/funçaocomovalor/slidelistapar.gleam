import sgleam/check
import gleam/int
import gleam/string
/// pub fn lista_pares(lst: List(Int)) -> List(Int) {
///    case lst {
///        [] -> []
///        [p, ..r] -> case int.is_even(p) {
///            True -> [p, ..lista_pares(r)]
///            False -> lista_pares(r)
/// }}}



/// pub fn lista_nao_vazia(lst: List(String)) -> List(String) {
///    case lst {
///        [] -> []
///        [p, ..r] -> case eh_nao_vazia(p) {
///            True -> [p, ..lista_nao_vazia(r)]
///            False -> lista_nao_vazia(r)
/// }}}



 /// Aqui será utilizada o filter, para "filtrar os elementos apartir de um predicado"
 /// Primeiro passo foi identificar duas funções com o corpo parecido.
 /// A unica parte que muda em cada uma na *lista_pares* é na linha 4
 /// Enquando na *lista_nao_vazia* é na linha 16, ou seja, o case.
 /// Então, irei generalizar isso.

pub fn generaliza(lst: List(a), pred: fn(a) -> Bool) -> List(a) {
    case lst {
        [] -> []
        [p, ..r] -> case pred(p) {
            True -> [p, ..generaliza(r, pred)]
            False -> generaliza(r, pred)
 }}
    

}


pub fn lista_pares(lst: List(Int)) -> List(Int) {
    generaliza(lst, int.is_even)
}

pub fn lista_pares_examples() {
    check.eq(lista_pares([3, 2, 7]), [2])
}

///pub fn lista_nao_vazia(lst: List(String)) -> List(String) {
///    generaliza(lst, pred)
/// }
/// pub fn lista_nao_vazia_examples() {
///    check.eq(lista_nao_vazia(["a", "", "b"]), ["a", "b"])
///  }