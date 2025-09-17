import sgleam/check
/// Projete uma união para representar uma figura,
///  que pode ser um retângulo, com largura e altura, ou
/// um círculo, com raio. Em seguida,

pub type Figura {
    /// Representa um figura, circulo possui raio
    /// Enquanto retangulo possui largura e altura
    Circulo(raio: Float)
    Retangulo(largura: Float, altura: Float)
}

pub fn area(geo: Figura) -> Float {
    case geo {
        Circulo(_) -> {geo.raio *. geo.raio} *. 3.14
        Retangulo(_, _) -> geo.altura *. geo.largura
    }
}
pub fn area_examples() {
    check.eq(area(Retangulo(3.0, 2.0)), 6.0)
    check.eq(area(Circulo(3.0)), 28.26)
}