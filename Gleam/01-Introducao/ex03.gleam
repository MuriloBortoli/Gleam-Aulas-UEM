import sgleam/check
/// Faça uma função chamada eh_par que recebe um número natural n e indica se n é par. Um número
/// é par se o resto da divisão dele por 2 é igual a zero. Não use case e nem a função pré-definida
/// int.is_even. Use o método de substituição para verificar se a função funciona corretamente de
/// acordo com os exemplos a seguir. Confira as respostas no modo interativo.

pub fn eh_par(n: Int) -> Bool {

    n % 2 == 0 
        
    
    
}

pub fn eh_par_examples() {
    check.eq(eh_par(1), False)
    check.eq(eh_par(4), True)
    check.eq(eh_par(0), True)
    
}