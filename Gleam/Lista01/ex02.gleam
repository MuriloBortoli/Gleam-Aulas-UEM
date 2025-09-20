import sgleam/check
/// Faça uma função chamada produto_anterior_posterior que recebe um número inteiro n e calcula
/// o produto de n, n + 1 e n - 1. Use o método de substituição para verificar se a função funciona
/// corretamente de acordo com os exemplos a seguir. Confira as respostas no modo interativo.

pub fn produto_anterior_posterior (n: Int) -> Int {
    {n - 1} * n * {n + 1}

}

pub fn produto_anterior_posterior_examples() {
    check.eq(produto_anterior_posterior(2), 6)
    check.eq(produto_anterior_posterior(4), 60)
}
