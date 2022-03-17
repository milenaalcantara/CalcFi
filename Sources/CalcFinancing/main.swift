// calcula numero de meses
// formula do financiamento: PMT = PV x ((((1+taxaJuros)ˆnParcelas) * taxaJuros/(1+taxaJuros)-1))
// valorParcela = valorLiqFinanciado * (((1 + taxaJuros)ˆqtdeParcelas) / (1 + taxaJuros) - 1)


import Foundation


var valorLiqFinanciado: Double
var qtdeParcelas: Double
var taxaJuros: Double

var valorParcela: Double
var valorJurosParcela: Double
var valorAmortizacaoParcela: Double
var totalJuros: Double
var AmortizacaoParcela: Double
var somaFinal: Double



valorLiqFinanciado = getDouble(msg: "Digite o valor que deseja financiar: ")

qtdeParcelas = getDouble(msg: "Em quantas parcelas deseja realizar o pagamento? ")

taxaJuros = getDouble(msg: "Digite a taxa de juros ao mês (em porcentagem): ") / 100

valorParcela = calcValorParcela(valorLiqFinanciado: valorLiqFinanciado, taxaJuros: taxaJuros, qtdeParcelas: qtdeParcelas)



func printValues(valorLiqFinanciado: Double, taxaJuros: Double, qtdeParcelas: Double) {
    print("Valor Líquido Financiado: \(valorLiqFinanciado)")
    print("Quantidade de Parcelas: \(qtdeParcelas)")
    print("Taxa de Juros (a.m.): \(taxaJuros * 100)%")
    print("O valor fixo da parcela é de R$ \(String(format: "%.2f", valorParcela))")
}


printValues(valorLiqFinanciado: valorLiqFinanciado, taxaJuros: taxaJuros, qtdeParcelas: qtdeParcelas)

