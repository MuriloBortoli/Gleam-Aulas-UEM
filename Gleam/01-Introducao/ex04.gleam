import sgleam/check
/// Faça uma função chamada tem_tres_digitos que recebe um número natural n e verifica se n tem
/// exatamente 3 dígitos. Não use case. Use o método de substituição para verificar se a função funciona
/// corretamente de acordo com os exemplos a seguir. Confira as respostas no modo interativo.

pub fn tem_tres_digitos(n: Int) -> Bool {
    n >= 100 && n <= 1000

}

pub fn tem_tres_digitos_examples() {
    check.eq(tem_tres_digitos(25), False)
    check.eq(tem_tres_digitos(389), True)
    check.eq(tem_tres_digitos(2012), False)
}