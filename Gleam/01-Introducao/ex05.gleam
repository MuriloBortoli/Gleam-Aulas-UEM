import sgleam/check
/// Faça uma função maximo que encontre o máximo entre dois inteiros. Não use a função int.max. Use o
/// método de substituição para verificar se a função funciona corretamente de acordo com os exemplos a
/// seguir. Use o método de substituição para verificar se a função funciona corretamente de acordo com
/// os exemplos a seguir. Confira as respostas no modo interativo.

pub fn maximo(a: Int, b: Int) -> Int  {
    case a >= b {
        True -> a
        False -> b
    }
   

    
}

pub fn maximo_examples() {
    check.eq(maximo(5, 7), 7)
    check.eq(maximo(10, 8), 10)
    check.eq(maximo(25, 25), 25)
}