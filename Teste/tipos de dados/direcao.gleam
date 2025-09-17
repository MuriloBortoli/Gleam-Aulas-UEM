import sgleam/check

pub type Direcao {
  NORTE
  SUL
  LESTE
  OESTE
}

pub fn direcao_oposta(algo: Direcao) -> Direcao {
  case algo == NORTE {
    True -> SUL
    False ->
      case algo == LESTE {
        True -> OESTE
        False ->
          case algo == SUL {
            True -> NORTE
            False -> LESTE
          }
      }
  }
}

pub fn direcao_oposta_examples() {
  check.eq(direcao_oposta(NORTE), SUL)
  check.eq(direcao_oposta(SUL), NORTE)
  check.eq(direcao_oposta(LESTE), OESTE)
  check.eq(direcao_oposta(OESTE), LESTE)
}

pub fn direcao_noventa(algo: Direcao) -> Direcao {
  case algo == NORTE {
    True -> LESTE
    False ->
      case algo == LESTE {
        True -> SUL
        False ->
          case algo == SUL {
            True -> OESTE
            False -> NORTE
          }
      }
  }
}

pub fn direcao_noventa_examples() {
  check.eq(direcao_noventa(NORTE), LESTE)
  check.eq(direcao_noventa(LESTE), SUL)
  check.eq(direcao_noventa(SUL), OESTE)
  check.eq(direcao_noventa(OESTE), NORTE)
}
/// pub fn direcao_antihorario()
