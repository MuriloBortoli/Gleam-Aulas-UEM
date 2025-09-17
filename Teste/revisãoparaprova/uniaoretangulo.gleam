import sgleam/check

/// uma uniao, retangulo: largura e altura ou circulo: raio

pub type Geo {
    Retangulo(largura: Float, altura: Float)
    Circulo(raio: Float)
}

/// função que calcula a area de uma figura
/// se for ratangulo, largura * altura, se for circulo: 3.14 * raio^2
/// 
pub fn area(figura: Geo) -> Float {
    case figura {
        Retangulo(largura, altura) -> largura *. altura 
        Circulo(raio) -> 3.14 *. {raio *. raio}

}  }

pub fn area_examples() {
    check.eq(area(Retangulo(20.0, 5.0)), 100.0)
    check.eq(area(Circulo(10.0)), 314.0)
}

