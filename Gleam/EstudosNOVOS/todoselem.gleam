import sgleam/check
/// Função que verifica se todos os elementos de uma lista estão na outra lista
/// como uma lista estará ou não, contida em outra,
/// o certo seria utilizar a estrategia de decompor uma e considerar a outra atomica
pub fn dual_list(lsta: List(Int), lstb: List(Int)) -> Bool {
    case lsta, lstb {
        [], [] -> True
        [], [b, ..resto] -> True
        [a, ..resto] , [] -> False
        [a, ..restoa], [b, ..restob] -> case a == b {
            True -> True && dual_list([restoa, restob])
            False -> case dual_list([a, restob]) {
                a
                
            }
        }
        


        }
        

    }
    


pub fn dual_list_examples() {
    check.eq(dual_list([], []), True)
    check.eq(dual_list([], [0]), True)
    check.eq(dual_list([0], []), False)
    check.eq(dual_list([0], [1, 3]), False)
    check.eq(dual_list([1, 0], [3, 1, 5, 0]), True)
}