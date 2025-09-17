import sgleam/check

/// função que verifica se os elementos de uma lista(bool) são verdadeiros

pub fn verifica_bool(a: List(Bool)) -> Bool {
    case a {
        [] -> True
        [primeiro, ..resto] -> case primeiro == True{ 
            True -> verifica_bool(resto)
            False -> False
        }
    }
}

pub fn verifica_bool_examples() {
    check.eq(verifica_bool([]), True)
    check.eq(verifica_bool([True]), True)
    check.eq(verifica_bool([True, False]), False)
    check.eq(verifica_bool([False, False, True]), False)
    check.eq(verifica_bool([True, True]), True)

}

/// mesmo objetivo, mas sem utilizar case
/// pub fn verifica_case(a: List(Bool)) -> Bool {
    /// não funciona
    /// let a = [primeiro, ..resto]
    /// a == True || verifica_case(..resto) == True
    

/// }


pub fn verifica_case_examples() {
    check.eq(verifica_case([]), True)
    check.eq(verifica_case([True]), True)
    check.eq(verifica_case([True, False]), False)
    check.eq(verifica_case([False, False, True]), False)
    check.eq(verifica_case([True, True]), True)

}