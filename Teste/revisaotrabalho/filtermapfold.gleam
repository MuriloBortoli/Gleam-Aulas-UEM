pub fn map(lst: List(a), f: fn(a) -> b) -> List(b) {
    case lst {
        [] -> []
        [p, ..r] -> [f(p), ..map(r, f)]
    }
}

pub fn filtra(lst: List(a), pred: fn(a) -> Bool) -> List(a) {
    case lst {
        [] -> [] 
        [p, ..r] -> case pred(p) {
            True -> [p, ..filtra(r, pred)]
            False -> filtra(r, pred)
        }
    }
}

pub fn reduz(lst: List(a), init: a, f: fn(a, b) -> b) -> b {
    case lst {
        [] -> init
        [p, ..r] -> f(reduz(lst, init, f), p)
    }
}

