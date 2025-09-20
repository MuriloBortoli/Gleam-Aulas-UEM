/// Escreva a especificação para a seguinte implementação de função. Avalie se a sua especificação está
/// boa, verificando se ela sozinha é suficiente para um desenvolvedor fazer uma implementação da função.
/// Aumenta *porcentagem* em *valor*

pub fn aumenta(valor: Float, porcentagem: Float) -> Float {
    valor *. { 1.0 +. porcentagem /. 100.0 }
}

pub fn aumenta_examples() {
    check.eq(aumenta())
}