import gleam/int

pub type Resolucao {
  Resolucao(larg: Int, alt: Int)
}

pub fn teste(d: Resolucao) -> Float {
  int.to_float(d.larg * d.alt) /. 1.000.000
}
