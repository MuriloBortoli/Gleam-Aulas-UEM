import sgleam/check

pub type Result(ok, error) {
    Ok(ok)
    Error(error)
}

/// Uma função que faz a diferença do valor maximo com o valor minimo de uma lista

/// Função auxiliar que encontra o valor maximo
pub fn max(lst: Result(List(Int), Nil)) -> Result(Int, Nil) {
    case lst {
        Error(_) -> Error(Nil)
        Ok([]) -> Error(Nil)
        Ok([x]) -> Ok(x)
        Ok([primeiro, segundo, ..resto]) -> case primeiro >= segundo {
            True -> max(Ok(resto))
            False -> max(Ok([segundo]))
        }
            
        }
    }

pub fn max_examples() {
    check.eq(max(Error(Nil)), Error(Nil))
    check.eq(max(Ok([])), Error(Nil))
    check.eq(max(Ok([1])), Ok(1))
    check.eq(max(Ok([8, 5, 4, 9, 3])), Ok(9))
    check.eq(max(Ok([1, 2, 0])), Ok(2))
    
}
/// Função auxiliar que encontra o valor minimo 

pub fn min(lst: Result(List(Int), Nil)) -> Result(Int, Nil) {
    case lst {
        Error(_) -> Error(Nil)
        Ok([]) -> Ok(-1)
        Ok([x]) -> Ok(x)
        Ok([primeiro, segundo, ..resto]) -> case primeiro <= segundo {
            True -> min(Ok(resto))
            False -> min(Ok([segundo]))
        }
    }
}

pub fn min_examples() {
    check.eq(min(Error(Nil)), Error(Nil))
    check.eq(min(Ok([])), Error(Nil))
    check.eq(min(Ok([0])), Ok(0))
    check.eq(min(Ok([3, 4, 1, 7])), Ok(1))
    check.eq(min(Ok([5, 7, 2, 0, 4])), Ok(0))
    check.eq(min(Ok([1, 3, 0, 4])), Ok(0))
}