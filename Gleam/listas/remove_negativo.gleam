import sgleam/check

pub fn remove(lst: List(Int)) -> List(Int) {
    case lst {
        [] -> []
        [primeiro, ..resto] -> case primeiro < 0 {
            True -> [resto, ..remove(resto)]
            False -> [primeiro, ..remove(resto)]
        }

    }
    
}


pub fn remove_examples() {
    check.eq(remove([]), [])
    check.eq(remove([1,2]), [1,2])
    check.eq(remove([1, 2, -3]), [1,2])
    check.eq(remove([-1,-2]), [])

    
}