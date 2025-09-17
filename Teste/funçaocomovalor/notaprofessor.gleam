import sgleam/check
/// Análise:
/// Verificar o nome dos alunos com as notas acima da média

/// Definição:
/// Primeiro preciso de um filter que pegara as notas
/// acima da média


/// Primeiro irei fazer de forma normal somente para entender o problema

pub fn notas_media(lst: List(Int)) -> List(Int) {
    filter(lst, maior)
}

pub fn notas_media_examples() {
    check.eq(notas_media([5, 6, 3, 7, 8]), [6, 7, 8])
}

pub fn filter(lst: List(Int), pred: fn(Int) -> Bool) -> List(Int) {
    case lst {
        [] -> []
        [p, ..resto] -> case pred(p) {
            True -> [p, ..filter(resto, pred)]
            False -> filter(resto, pred)
        }
    }
}

pub fn maior(n: Int) -> Bool {
    n >= 6
}