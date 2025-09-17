import sgleam/check
/// Enumercações
/// Utilizadas quando é possível nomear todos os valores
/// Exemplo:
/// Combustível:
/// valores possíveis para combustível: Alcool, Gasolina
pub type Combustivel {
    Alcool
    Gasolina 
}
/// funcao que calcula qual combustivel compensa mais
pub fn combustivel(alcool: Float, gasolina: Float)-> Combustivel {
    case alcool == gasolina *. 0.7 {
        True -> Gasolina
        False -> Alcool
    }

}

pub fn combustivel_examples(){
    check.eq(combustivel(3.5, 5.3), Alcool)
    check.eq(combustivel(3.5, 5.0), Gasolina)

}


/// Análise: comparar preco da bala em relação ao chiclete, caso a bala seja >= R$0,25, leva bala, senao chiclete
/// Note que só existe dois valores possíveis: Bala ou Chiclete, então se utiliza uma enumeração
pub type Doce {
    Bala
    Chiclete
} 
/// Definição de tipos: um parâmetros, *bala* : Float, e retorna Doce
/// 
pub fn doces(bala: Float)-> Doce {
    case bala <=. 0.25 {
        True -> Bala
        False -> Chiclete
    } 
}

pub fn doces_examples(){
    check.eq(doces(0.10), Bala)
    check.eq(doces(0.30), Chiclete)
    check.eq(doces(0.25), Bala)
}


/// Análise: uma função que compara direcões, norte, sul, leste, oeste, ao receber uma direcao, aponta para a direcao oposta
/// Definição de tipos de dados: *direcao* : Direcao, retorna Direcao
/// Especificação: retorna a direcao oposta
pub type Direcao {
    Norte 
    Sul 
    Leste 
    Oeste
}
pub fn oposta(direcao: Direcao)-> Direcao {
    case direcao {
        Norte -> Sul
        Sul -> Norte
        Leste -> Oeste
        Oeste -> Leste
    }
}

pub fn oposta_examples() {
    check.eq(oposta(Norte), Sul)
    check.eq(oposta(Sul), Norte)
    check.eq(oposta(Leste), Oeste)
    check.eq(oposta(Oeste), Leste)
}



/// observação: estou definindo o corpo da funcão antes de fazer os exemplos, isso é um erro
/// quantos exemplos devem ser feitos? 1 exemplo para cada valor da enumeração
/// 
/// 
/// 
/// análise: funcao que recebe uma direcao, e retorna a direcao que fica a 90 graus no sentido horário
/// definição de tipos de dados: *direcao* : Direcao, retorna Direcao
/// especificação: retorna a direcao que fica a 90 graus no sentido horario

pub fn noventa(direcao: Direcao)-> Direcao {
    case direcao {
        Norte -> Leste
        Leste -> Sul
        Sul -> Oeste
        Oeste -> Norte
       
    }
}

pub fn noventa_examples(){
    check.eq(noventa(Norte), Leste)
    check.eq(noventa(Leste), Sul)
    check.eq(noventa(Sul), Oeste)
    check.eq(noventa(Oeste), Norte)
    
}

/// análise: uma funcao que mostra o sentido que está a 90 graus no sentido antihorário, pra isso, é necessário usar a funcao noventa()

pub fn noventaanti(direcao: Direcao)-> Direcao {
    noventa(noventa(noventa(direcao)))
}

pub fn noventaanti_examples(){
    check.eq(noventaanti(Norte), Oeste)
    check.eq(noventaanti(Leste), Norte )
    check.eq(noventaanti(Sul), Leste)
    check.eq(noventaanti(Oeste), Sul)
}

