import sgleam/check
import gleam/int
///  Projete uma função que converta um número natural para string usando a seguinte
///  estratégia: se o número é menor que 10, converta o número diretamente para uma string
///  (pode ser usando seleção com 10 casos!), senão gere dois números separando o último dígito
///  do número (usando resto da divisão por 10) dos demais dígitos (usando divisão inteira por 10),
///  converta recursivamente os dois números para string e junte as strings resultantes. Por exemplo,
///  separando 451 obtemos 45 e 1, convertendo para strings (recursivamente) obtemos "45" e "1", juntando as strings
///  obtemos "451". Faça a análise do tempo de execução.

pub fn converte_natural(n: Int) -> String {
  case n {
    _ if n < 10 -> int.to_string(n)
    _ -> {
      let dois = converte_natural(n / 10)
      let ultimo = converte_natural(n % 10)
      dois <> ultimo
    }
  } 
}


pub fn converte_natural_examples () {
    check.eq(converte_natural(8), "8")
    check.eq(converte_natural(123), "123")
    check.eq(converte_natural(11111), "11111")
}   