import sgleam/check

/// Projete uma função que calcule a soma ponderada a partir de
/// lista de números e uma lista de pesos.
/// Considere que para cada numero, existe um peso correspondente na outra lista
/// Usaremos a estrategia de processar os dois argumentos ao mesmo tempo

pub fn soma_ponderada(lsta: List(Float), lstb: List(Float)) -> Result(Float, Nil) {
    case lsta, lstb {
        [], [] -> Ok(0.0) 
        [primeiroa, ..restoa], [primeirob, ..restob] -> Ok(primeiroa *. primeirob && soma_ponderada(restoa, restob))
        
    }
}

fn soma_ponderada_examples() {
    check.eq(soma_ponderada([], []), Ok(0.0))
    check.eq(soma_ponderada([4.0], [2.0]), Ok(8.0))
    check.eq(soma_ponderada([3.0, 4.0], [5.0, 2.0]),Ok(23.0))
    check.eq(soma_ponderada([5.0, 3.0, 4.0], [1.0, 5.0, 2.0]),Ok(28.0))
    check.eq(soma_ponderada([], [1.0]), Error(Nil))
    check.eq(soma_ponderada([1.0], []), Error(Nil))
}