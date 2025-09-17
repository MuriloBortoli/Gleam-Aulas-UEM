import sgleam/check
/// Enum, para representar simbolos
/// Pedra
/// Papel
/// Tesoura
pub type Simbolo {
    Pedra
    Papel
    Tesoura
}
/// União, que representa dois jogadores, com nome: String, simbolo: Simbolo
pub type Jogada {
    Empate
    Primeiro(nome: String, simbolo: Simbolo)
    Segundo(nome: String, simbolo: Simbolo)
}

/// função que diz quem ganhou baseado no simbolo
/// Pedra > Tesoura
/// Tesoura > Papel
/// Papel > Pedra
pub fn ganhador(jogo: Jogada) -> Jogada {
    case ganhador {
        Primeiro(nome, simbolo) -> case Primeiro.simbolo == Pedra && Segundo.simbolo == Tesoura {
            True -> Primeiro(nome, simbolo)
            False -> case Primeiro.simbolo == Pedra && Segundo.simbolo == Papel 
        }
    }
}