import sgleam/check
/// uniao para representar :
/// Criança
/// Jovem(quer: Bool, carteirinha: int)
/// Adulto
/// Idoso
pub type Desconto {
    Crianca
    Jovem(quer: Bool, carteirinha: Int)
    Adulto
    Idoso
}

/// função que retorna a carteirinha do estudante se ele tiver
pub fn calculo(a: Desconto) -> Int {
    case a {
        Crianca -> 0
        Jovem(quer, carteirinha) -> case quer == True {
            True -> carteirinha
            False -> 0
        }
        Adulto -> 0
        Idoso -> 0
    }

}

pub fn calculo_examples() {
    check.eq(calculo(Crianca), 0)
    check.eq(calculo(Jovem(True, 123456)), 123456)
    check.eq(calculo(Jovem(False, 123456)), 0)
    check.eq(calculo(Adulto), 0)
    check.eq(calculo(Idoso), 0)

}


/// função que retorna Bool se o espectador tem desconto
/// criança e idoso tem desconto
/// Jovem com carteirinha tem desconto
/// Adulto não tem desconto

pub fn talvez(espec: Desconto) -> Bool {
    case espec {
        Crianca -> True
        Jovem(quer, carteirinha) -> case quer == True {
            True -> True
            False -> False
        }
        Adulto -> False
        Idoso -> True
    }
}

pub fn talvez_examples() {
    check.eq(talvez(Crianca), True)
    check.eq(talvez(Jovem(True, 123456)), True)
    check.eq(talvez(Jovem(False, 123456)), False)
    check.eq(talvez(Adulto), False)
    check.eq(talvez(Idoso), True)

}