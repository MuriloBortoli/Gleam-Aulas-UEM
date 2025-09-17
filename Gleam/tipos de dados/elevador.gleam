import sgleam/check

pub type Situacao {
  Parado
  Subindo
  Descendo
}

pub fn elevador(partida: Int, chegada: Int) -> Situacao {
  case partida == chegada {
    True -> Parado
    False ->
      case partida < chegada {
        True -> Subindo
        False -> Descendo
      }
  }
}

pub fn elevador_examples() {
  check.eq(elevador(3, 3), Parado)
  check.eq(elevador(3, 4), Subindo)
  check.eq(elevador(5, 4), Descendo)
}

/// estado/acao      |       Parar              |      Subir          |     Descer
/// ___________________________________________________________________________
/// 
/// Parado           |          -               |      Subindo        |    Descendo
/// Subindo          |        Parado            |        -            |       -
/// Descendo         |        Parado            |        -            |       -
/// 
pub fn verifica_elevador(atual: Situacao, proximo: Situacao) -> Bool {
  atual == Parado && atual != proximo || proximo == Parado
}

pub fn verifica_elevador_examples() {
  check.eq(verifica_elevador(Parado, Subindo), True)
  check.eq(verifica_elevador(Parado, Descendo), True)
  check.eq(verifica_elevador(Parado, Parado), True)
  check.eq(verifica_elevador(Subindo, Subindo), False)
  check.eq(verifica_elevador(Subindo, Descendo), False)
  check.eq(verifica_elevador(Subindo, Parado), True)
  check.eq(verifica_elevador(Descendo, Subindo), False)
  check.eq(verifica_elevador(Descendo, Descendo), False)
  check.eq(verifica_elevador(Descendo, Parado), True)
}
