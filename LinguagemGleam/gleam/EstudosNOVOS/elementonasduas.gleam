import sgleam/check

/// Projete uma função que verifique se todos os elementos de uma lista
/// estão presentes em outra lista.
pub fn mesmos_elementos(lsta: List(a), lstb: List(a)) -> Bool {
    case lsta, lstb {
        [], [] -> True
        [], _ -> True
        _, [] -> False
        [a, ..restoa], [b, ..restob] -> a == b && mesmos_elementos(restoa, restob)
    
    }

}


pub fn mesmos_elementos_examples(){
    check.eq(mesmos_elementos([], []), True)
    check.eq(mesmos_elementos([], [1]), True)
    check.eq(mesmos_elementos([1], []), False)
    check.eq(mesmos_elementos([1, 3], [1, 2]), False)
    check.eq(mesmos_elementos([1, 2], [1, 2, 5]), True)
    

}