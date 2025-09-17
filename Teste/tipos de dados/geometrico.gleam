import sgleam/check
/// Projetar uma uniao que: Pode ser um retangulo, com largura e altura, ou um circulo: com raio.
pub type Geometrico {
    Retangulo(largura: Float, altura: Float)
    Circulo(raio: Float)
}

/// uma funcao que determina a area de uma figura
/// Retangulo = largura * altura
/// Circulo = 3.14 * *raio*^2 
pub fn calcula(forma: Geometrico)-> Float {
    case forma {
        Retangulo(largura, altura) -> forma.largura *. forma.altura
        Circulo(raio) -> 3.4 *. forma.raio *. forma.raio
    }
}

pub fn calcula_examples(){
    check.eq(calcula(Retangulo(2.5, 3.0)), 7.5)
    check.eq(calcula(Circulo(2.5)), 21.25)

}
