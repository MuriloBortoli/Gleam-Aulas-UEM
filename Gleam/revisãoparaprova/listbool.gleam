import sgleam/check

/// Função que verifica se todos os elementos de uma lsita de boolenao são verdadeiros.

pub fn verifica(lst: List(Bool)) -> Bool {
    case lst {
        [] -> True 
        [primeiro, ..resto] -> case primeiro == True {
            True -> verifica(resto)
            False -> False
            
        } 
    }
}

pub fn verifica_examples() {
    check.eq(verifica([]), True)
    check.eq(verifica([True]), True)
    check.eq(verifica([True, False]), False)
}