import sgleam/check
import gleam/string
/// Faça uma função chamada eh_reveillon que receba como entrada uma data no formato “aaaa/mm/dd” é verifique
/// se a data é um dia de réveillon, isto é, o último dia do ano. Confira no modo interativo se a função funciona
/// corretamente para os seguintes exemplos.

/// Definição de tipos :
/// data no formato de string, saida como bool

pub fn eh_reveillon(data: String) -> Bool {
    string.slice(data, 5, 2) == "12" && string.slice(data, 8, 2) == "31"

}

pub fn eh_reveillon_examples() {
    check.eq(eh_reveillon("2024/12/31"), True)
    check.eq(eh_reveillon("2000/01/31"), False)
    check.eq(eh_reveillon("2001/12/30"), False)
}

/// Análise
/// Função que escreve uma string com um tamanho fixo de caracteres
/// se a string for maior que o tamanho fixo, escreve o começo e completa com "..."
/// Se a string for menor, completa com espaços em branco "  "
/// Tamanho fixo = 5 

/// Definição dos tipos de dados
/// O texto sera em formato de string, e a saída também

/// Especificação
/// 
/// Escreve uma string, com uma quantidade fixa de 5 caracteres, se passar disso,
/// escreve os 2 primeiros caracteres e completa com "..."
/// Se for menor que 5, completa com espaços em branco

pub fn fixo(txt: String) -> String {
    let tam = string.length(txt)
        
    case tam == 5 {
        True -> txt 
        False -> case tam > 5 {
            True -> string.slice(txt, 0, 2) <> "..."
            False -> txt <> string.repeat(" ", 5 - tam)

        }
        
    }
}


pub fn fixo_examples() {
    check.eq(fixo("Bola"), "Bola ")
    check.eq(fixo("Feijão"), "Fe...")
    check.eq(fixo("Minas"), "Minas")
}