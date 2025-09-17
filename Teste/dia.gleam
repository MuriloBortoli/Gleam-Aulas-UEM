import gleam/string
import sgleam/check

pub fn dma_para_amd(data: String) -> String {
  let ano = string.slice(data, 6, 4)
  let mes = string.slice(data, 3, 2)
  let dia = string.slice(data, 0, 2)
  ano <> "/" <> mes <> "/" <> dia
}

pub fn dma_para_amd_examples() {
  check.eq(dma_para_amd("19/03/2004"), "2004/03/19")
}
