import sgleam/check

/// Aqui será utilzado a forma:
/// Considerar um argumento como atomico e o outro fazer de maneira recursiva

pub fn concatena_list(lsta: List(a), lstb: List(a)) -> List(a) {
    case lsta {
        [] -> lstb 
        [primeiro, ..resto] -> [primeiro, ..concatena_list(resto, lstb)]
        
    }}
pub fn concatena_list_examples() {
    check.eq(concatena_list([], [1, 2, 3]), [1, 2 ,3])
    check.eq(concatena_list([0, 1], []), [0, 1])
    check.eq(concatena_list([1], [2, 3, 5]), [1, 2, 3, 5])

}