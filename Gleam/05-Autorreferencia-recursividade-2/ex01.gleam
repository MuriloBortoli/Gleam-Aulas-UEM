import sgleam/check

/// Projete uma função que receba como parâmetro um número natural n e um valor v e crie uma nova
/// lista com n repetições do valor v.

pub fn lista_repete(n: Int, valor: Int) -> List(Int) {
    case n {
        _ if n < 0 -> [] 
        0 -> []
        _ -> [valor, ..lista_repete(n - 1, valor)]
         
    }

}


pub fn lista_repete_examples() {
    check.eq(lista_repete(-1, 1), [])
    check.eq(lista_repete(0, 0), [])
    check.eq(lista_repete(1, 0), [0])
    check.eq(lista_repete(3, 1), [1, 1, 1])
    
    
}