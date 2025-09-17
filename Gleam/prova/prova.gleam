import sgleam/check
/// Análise : calcula o custo de inscrição de atletas, valor depende de categoria e quantidade de atleta
/// Atletas menores : R$30
/// Sub23 : R$40
/// Adultos : 50
/// Equipes com mais de 10 atletas recebem 10% de desconto
pub type Categoria {
    /// Representa as categorias possíveis
    Menores 
    SubVinteTres
    Adultos
}

pub type Inscricao{
    /// Representa a inscrição de atletas
    Teste(a: Categoria, b: Float)
}

/// Definição de tipos de dados: *inscreve*: Inscricao, retorna Float

/// Especificação: identifica categoria e numero de atletas e calcula valor total da inscrição
/// caso numero de atletas > 10, desconto de 10%


pub fn inscrever(inscreve: Inscricao)-> Float {
    
    case inscreve {
        Teste(Menores, b) if b >. 10.0 -> b *. 30.0 -. {{b *. 30.0} *.0.10}
        Teste(Menores, b) -> b *. 30.0
        Teste(SubVinteTres, b) if b >. 10.0 -> b *. 40.0 -. {{b *. 40.0} *. 0.10}
        Teste(SubVinteTres, b) -> b *. 40.0
        Teste(Adultos, b) if b >. 10.0 -> b *. 50.0 -. {{b *. 50.0} *. 0.10}
        Teste(Adultos, b) -> b *. 50.0

    }
}

pub fn inscrever_examples(){
    check.eq(inscrever(Teste(Menores, 9.0)),270.0)
    check.eq(inscrever(Teste(Menores, 11.0)), 297.0)
    check.eq(inscrever(Teste(SubVinteTres, 7.0)), 280.0)
    check.eq(inscrever(Teste(SubVinteTres, 12.0)), 432.0)
    check.eq(inscrever(Teste(Adultos, 5.0)), 250.0)
    check.eq(inscrever(Teste(Adultos, 15.0)), 675.0)
}


///Questão 2

/// O estado de um editor de linha.
/// - esquerda é o conteúdo da linha a esquerda do cursor
/// - direita é o conteúdo da linha a direita do cursor

pub type Cursor{
    Esquerda(a: Int)
    Direita(b: Int)
    Inserir(c: Editor)
}
type Editor {
Editor(esquerda: String, direita: String)
 }

