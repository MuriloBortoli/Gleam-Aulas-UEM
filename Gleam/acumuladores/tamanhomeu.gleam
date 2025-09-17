import sgleam/check
pub fn tamanho(lst: List(a)) -> Int {
    case lst {
        [] -> 0
        [_, ..r] -> 1 + tamanho(r)
    }
    }

/// Note que 1 + tamanho(r) se torna:
/// 1 + {tamanho(r)}
/// 1 + {1 + {tamanho( r)}}
/// 1 + {1 + {1 + {tamanho (r)}}}
/// Aqui a função irá se beneficiar sim de um acumulador

pub fn tamanhoo(lst: List(a), acc: Int) -> Int {
    case lst {
        [] -> acc
        [_, ..r] -> tamanhoo(r, acc + 1)
    }
}
pub fn tamanhoo_examples() {
    check.eq(tamanhoo([1, 2, 3], 0), 3)
}