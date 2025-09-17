import sgleam/check
/// Projete uma função que crie uma nova lista 
/// removendo as strings vazias de uma lista de strings

pub fn vazia(lst: List(String)) -> List(String) {
    case lst {
        [] -> []
        [p, ..r] -> case p == "" {
            True -> vazia(r)
            False -> [p, ..vazia(r)]
        }
    }
}

pub fn vazia_examples() {
    check.eq(vazia(["", "a", "b"]), ["a", "b"])
}

pub fn vazia_acc(lst: List(String), acc: String) -> List(String) {
    case lst { 
        [] -> []
        [p, ..r] -> case p != "" {
            True -> vazia_acc(r, acc)
        }
    }
}