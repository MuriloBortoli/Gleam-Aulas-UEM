import sgleam/check
import gleam/string

pub fn inverte(a: String) -> String {
    case string.length(a) {
        0 -> a
        1 -> a
        _ -> {
            let primeiro = string.slice(a, 0, 1)
            let ultimo = string.slice(a, -1, 1)
            let meio = string.slice(a, 1, string.length(a) - 2)
            let meio_invertido = inverte(meio)
            ultimo <> meio_invertido <>  primeiro

        }
        
    }
}

pub fn inverte_examples() {
    check.eq(inverte("roma"), "amor")
    check.eq(inverte("oi"), "io")
}