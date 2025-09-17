import sgleam/check

pub type Usuario {
    Aluno
    ServidorAte3
    ServidorMais3
    Docente
    Externo
}

pub fn calcula(usuario: Usuario, quant: Float) -> Float {
    case usuario {
        Aluno -> quant *. 5.0
        ServidorAte3 -> quant *. 5.0
        ServidorMais3 -> quant *. 10.0 
        Docente -> quant *. 10.0
        Externo -> quant *. 19.0 
    }
}

pub fn calcula_examples() {
    check.eq(calcula(Aluno, 3.0), 15.0)
    check.eq(calcula(ServidorAte3, 5.0), 25.0)
    check.eq(calcula(ServidorMais3, 2.0), 20.0)
    check.eq(calcula(Docente, 4.0), 40.0)
    check.eq(calcula(Externo, 2.0), 38.0)
}

