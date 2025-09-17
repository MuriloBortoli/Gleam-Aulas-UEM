import sgleam/check
/// Projete uma estrutura para representar
///  uma data com dia, ano e mês
pub type Data {
    Data(dia: String, mes: String, ano: String)
}


pub fn representa_data(data: Data) -> String {
    case data { 
        Data(_, _, _) -> data.dia <> "/" <> data.mes <> "/" <> data.ano

    }
}

pub fn representa_data_examples() {
    check.eq(representa_data(Data("12", "03", "2006")), "12/03/2006")
}

pub fn ultimo_dia(data: Data) -> Bool {
    case data {
        Data(_, _, _) -> data.dia == "31" && data.mes == "12" 
    }
}

pub fn ultimo_dia_examples() {
    check.eq(ultimo_dia(Data( "31", "12", "20")), True)
    check.eq(ultimo_dia(Data( "31", "11", "20")), False)

}