import gleam/string
import sgleam/check

/// Produz True se uma pessoa com *idade* é isento da
/// tarifa de transporte público, isto é, tem menos
/// que 18 anos ou 65 ou mais. Produz False caso contrário.
pub fn isento_tarifa(idade: Int) -> Bool {
  idade < 18 || idade > 65
}

pub fn isento_tarifa_examples() {
  check.eq(isento_tarifa(17), True)
  check.eq(isento_tarifa(18), True)
  check.eq(isento_tarifa(50), False)
  check.eq(isento_tarifa(65), True)
  check.eq(isento_tarifa(70), True)
}

/// Conta a quantidade de dígitos de *n*.
/// Se *n* é 0, então devolve zero.
/// Se *n* é maior  que zero, então devolve a quantidade
pub fn quantidade_digitos(n: String) -> Int {
  string.length(n)
}

/// Produz True se uma pessoa com *idade* é supercentenária,
/// isto é, tem 110 anos ou mais, False caso contrário.
pub fn supercentenario(idade: Int) -> Bool {
  idade >= 110
}

pub fn supercentenario_examples() {
  check.eq(supercentenario(101), False)
  check.eq(supercentenario(110), False)
  check.eq(supercentenario(112), True)
}

/// Transforma a string *data* que está no formato "dia/mes/ano"
/// para o formato "ano/mes/dia".
///
/// Requer que o dia e o mês tenham dois dígitos e que
/// o ano tenha quatro dígitos.
pub fn dma_para_amd(data: String) -> String {
  case string.length(string.slice(data, 0, 1) == 2 && string.length(string.slice(data, 3, 1) == 2 ) && string.length(string.slice(data,6, 3) == 4)) {
    True -> string.slice(data,6, 4) <> string.slice(data, 2, 3) <> string.slice(data, 0, 2)
    False -> "Erro"
  }
  
}

pub fn dma_para_amd_examples() {
  check.eq(dma_para_amd("19/07/2023"), "2023/07/19")
  check.eq(dma_para_amd("01/01/1980"), "1980/01/01")
  check.eq(dma_para_amd("02/02/2002"), "2002/02/20")
}

/// Se o numero de caracteres de *nome* é menor ou igual a 4
/// Retorna "Curto", se for <= 10, retorna "Medio"
/// Se maior que 10, "longo"
pub fn tamanho_nome(nome: String) -> Int {
  case string.length(nome) <= 4 {
    True -> "curto"
    False ->
      case string.length(nome) <= 10 {
        True -> "médio"
        False -> "longo"
    }
  }
}
