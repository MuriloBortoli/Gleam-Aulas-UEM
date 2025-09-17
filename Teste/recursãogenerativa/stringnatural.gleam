import sgleam/check
import gleam/int
/// Uma função que converte um numero natural para string
/// Caso n > 10 -> converta diretamente para string
/// Caso contrário, por exemplo, para o numero 123, separe o ultimo digito
/// com n % 10, e os primeiros dois digitos com n / 10. Convera o ultimo digito 
/// e os dois primeiros para string, e depois concatene os dois
/// 
pub fn converte(n: Int) -> String {
    case n {
        _, if n < 10 -> int.to_string(n)
        _ -> {
            let ultimo = converte(n % 10)
            let dois = converte(n / 10)
            dois <> ultimo
        }
    }
}

pub fn converte_examples () {
    check.eq(converte(123), "123")
    check.eq(converte(1), "1")
    check.eq(converte(2006), "2006")
}