import sgleam/check

/// Faça uma função chamada area_retangulo que recebe dois argumentos, a largura e a altura de
/// um retângulo, e calcula a sua área. Use o método de substituição para verificar se a função funciona
/// corretamente de acordo com os exemplos a seguir. Confira as respostas no modo interativo.


pub fn area_retangulo(largura: Float, altura: Float ) -> Float {
    largura *. altura
    
}

pub fn area_retangulo_examples() {
    check.eq(area_retangulo(2.0, 3.0), 6.0)
    check.eq(area_retangulo(4.0, 5.2), 20.8)
}