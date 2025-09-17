import sgleam/check
import gleam/int

/// Uma funcao que diz quantos pixels uma resolucao tem
pub type Resolucao {
    Resolucao(largura: Int, altura: Int)

}

pub fn resolucao(re: Resolucao)-> Float {
    int.to_float(re.largura * re.altura) /. 1_000_000.0

}

pub fn resolucao_examples(){
    check.eq(resolucao(Resolucao(1920,1080)), 2.0736)
    check.eq(resolucao(Resolucao(1024,768)), 0.786432)
}

pub type Aspecto {
    QuatroPorTres
    DezesseisPorNove
    Outro
}
/// definição de tipos de dados: largura: Resolucao, altura: Resolucao, retorna Aspecto
pub fn aspecto(res: Resolucao)-> Aspecto {
    case res.largura * 3 == res.altura * 4 {
        True -> QuatroPorTres
        False -> case res.largura * 9 == res.altura * 16 {
            True -> DezesseisPorNove
            False -> Outro
        }
    } 
}

pub fn aspecto_examples(){
    check.eq(aspecto(Resolucao(1400, 1050)), QuatroPorTres)
    check.eq(aspecto(Resolucao(1600,900)), DezesseisPorNove)
    check.eq(aspecto(Resolucao(493,300)), Outro)
}
