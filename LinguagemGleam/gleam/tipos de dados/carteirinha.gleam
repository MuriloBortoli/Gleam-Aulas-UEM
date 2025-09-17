import gleam/option.{type Option, Some, None}



pub type Espectador {
    Crianca
    Jovem(carteirinha: Option(Int))
    Adulto
    Idose
}
pub fn eita(a: Espectador)-> Option(Int) {
    case a {
        None -> None
        Some(x) -> Some(x)
    }

}


