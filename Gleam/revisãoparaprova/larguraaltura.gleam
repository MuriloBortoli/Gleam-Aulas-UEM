import sgleam/check

/// estrutura para representar largura e altura
pub type Resolucao{
    Resolucao(largura: Float, altura: Float)
}

/// função que calcula a resolução, *largura* x *altura*
pub fn calculo(res: Resolucao) -> Float {
    res.largura *. res.altura
}

pub fn calculo_examples() {
    check.eq(calculo(Resolucao(10.0, 20.0)), 200.00)
}