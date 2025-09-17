/// Agrupa os elementos de *lst* em sublistas com *n* elementos. Apenas a
/// última sublista pode ter menos de *n* elementos.
pub fn agrupa(lst: List(a), n: Int) -> List(List(a)) {
    case lst {
        [] -> [] 
        _ -> todo 
    }

}





pub fn agrupa_examples() {
    check.eq(agrupa([], 2), [])
    check.eq(agrupa([4, 1, 5], 1), [[4], [1], [5]])
    check.eq(agrupa([4, 1, 5, 7, 8], 2), [[4, 1], [5, 7], [8]])
    check.eq(agrupa([4, 1, 5, 7, 8], 3), [[4, 1, 5], [7, 8]])
}
