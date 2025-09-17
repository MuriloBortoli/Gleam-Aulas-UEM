
import sgleam/check


pub type Resolucao {
  Resolucao(largura: Float, altura: Float)
}

pub type Aspecto {
  QuatroPorTres
  DezesseisPorNove
  Outro
}

pub fn determina_pixel(res: Resolucao) -> Float {

  res.largura *. res.altura /. 1_000_000.0
}
/// pontos importantes : para trabalha com os campos da enumeracao, utiliza-se o ., como no exercicios
/// foi utilizado o res.largura para se referir ao campo largura.

pub fn determina_pixel_examples() {
  check.eq(determina_pixel(Resolucao(1280.0, 720.0)), 0.9216)
  check.eq(determina_pixel(Resolucao(1920.0, 1080.0)), 2.0736)
}

pub fn aspecto(a: Resolucao)-> Aspecto {
  case a.largura *. 3.0 == a.altura *. 4.0 {
    True -> QuatroPorTres
    False -> case a.largura *. 9.0 == a.altura *. 16.0 {
      True -> DezesseisPorNove
      False -> Outro
    }

  }

}
pub fn aspecto_examples() {
  check.eq(aspecto(1600.0, 1200.0), QuatroPorTres)
  check.eq(aspecto(1920.0, 1080.0), DezesseisPorNove)
  check.eq(aspecto(1900.0, 1200.0), Outro)
  
  


}