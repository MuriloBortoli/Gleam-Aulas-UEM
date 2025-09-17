/// Soma os elementos de *lst*.
fn soma(lst: List(Int)) -> Int {
    case lst {
        [] -> 0
        [p, ..r] -> p + soma(r)
    }
    }

pub fn soma_examples() {
    check.eq(soma([4, 1, 2]), 7)
}

/// Junta os itens de *lst* em ordem contrária.
pub fn junta_r(lst: List(String)) -> String {
    case lst {
        [] -> ""
        [p, ..r] -> junta_r(r) <> p
}
}
pub fn junta_r_examples() {
    check.eq(junta_r(["a", "", "c"]), "ca")
}
