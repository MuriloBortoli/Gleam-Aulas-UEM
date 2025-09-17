import gleam/int
import gleam/float
import sgleam/check
pub fn lista_nega(lst: List(Int)) -> List(Int) {
    lista(lst, int.negate)
}

pub fn lista_nega_examples(){
    check.eq(lista_nega([4, 3]), [-4, -3])
}

pub fn lista_string(lst: List(Float)) -> List(String) {
    lista(lst, float.to_string)
}

pub fn lista_string_examples() {
    check.eq(lista_string([3.0, 7.0]), ["3.0", "7.0"])
}
/// Eu estava errando pois faltou definir f como f: fn(a) -> b
pub fn lista(lst: List(a), f: fn(a) -> b ) -> List(b) {
    case lst {
        [] -> []
        [p, ..r] -> [f(p), ..lista(r, f)]

    }
}

