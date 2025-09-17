pub fn insere_final(lst: List(Int), a: Int) -> List(Int) {
    case lst {
        [] -> [a]
        [primeiro, ..resto] -> [primeiro, ..insere_final(resto, a)]
        
    }
}