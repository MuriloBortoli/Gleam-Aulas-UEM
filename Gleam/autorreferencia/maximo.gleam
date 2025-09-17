import sgleam/check
/// Projete uma função que determine o valor máximo de uma lista de inteiros

pub fn maximo(lst: List(Int)) -> Int {
    case lst {

        [] -> []
        [_] -> [primeiro]
        [primeiro,segundo,  ..resto] -> case primeiro >= segundo {
            
        }
        maximo(..resto)
        primeiro 
    }
}


pub fn maximo_examples() {
    check.eq(maximo([]), [])
    check.eq(maximo([0]), [0])
    check.eq(maximo([1, 2]), [2])
    check.eq(maximo([2, 1, 2]), [2])
}