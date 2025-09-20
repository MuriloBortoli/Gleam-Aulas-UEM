import sgleam/check
/// Implemente a função de acordo com a especificação a seguir. Corrija a especificação se necessário.
/// Produz True se uma pessoa com *idade* é isento da
/// tarifa de transporte público, isto é, tem menos
/// que 18 anos ou 65 ou mais. Produz False caso contrário.



pub fn isento_tarifa(idade: Int) -> Bool {
  case idade <= 18 {
    True -> True
    False ->
      case idade >= 65 {
        True -> True
        False -> False
      }
  }
}

pub fn isento_tarifa_examples() {
  check.eq(isento_tarifa(17), True)
  check.eq(isento_tarifa(18), False)
  check.eq(isento_tarifa(50), False)
  check.eq(isento_tarifa(65), True)
  check.eq(isento_tarifa(70), True)
}
