import sgleam/check
/// Análise: calcula a média de 4 avaliações e diz se o aluno foi 
/// Aprovado(media >= 7)
/// Reprovado(media < 4)
/// Exame(media >= 4)
/// Definição de tipos: recebe 4 notas do tipo Float, retorna Situacao
/// 
pub type Situacao {
    Aprovado
    Reprovado
    Exame

}

pub fn situacao(primeira: Float, segunda: Float, terceira: Float, quarta: Float)-> Situacao {
    let a = {primeira +. segunda +. terceira +. quarta} /. 4.0 
    case a >=. 7.0{ 
        True -> Aprovado
        False -> case a >=. 4.0{
            True -> Exame
            False -> Reprovado
        }
    } 
}

pub fn situacao_examples(){
    check.eq(situacao(7.0, 7.0, 7.0, 7.0), Aprovado)
    check.eq(situacao(5.0, 9.0, 2.0, 1.0), Exame)
    check.eq(situacao(5.0, 9.0, 0.0, 1.0), Reprovado)


}