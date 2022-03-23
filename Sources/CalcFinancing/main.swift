// calcula numero de meses
// formula do financiamento: PMT = PV x ((((1+taxaJuros)ˆnParcelas) * taxaJuros/(1+taxaJuros)-1))
// valorParcela = valorLiqFinanciado * (((1 + taxaJuros)ˆqtdeParcelas) / (1 + taxaJuros) - 1)


import Foundation


var financedLiqValue: Double
var numberOfParcel: Double
var interestRate: Double

var parcelValue: Double
var interestValuePerParcel: [Double]
var amortizationPerParcel: [Double]
var debitValue: [Double]
//var totalInterest: Double
//var totalPayable: Double



financedLiqValue = getDouble(msg: "Digite o valor que deseja financiar: ")

numberOfParcel = getDouble(msg: "Em quantas parcelas deseja realizar o pagamento? ")

interestRate = getDouble(msg: "Digite a taxa de juros ao mês (em porcentagem): ") / 100

parcelValue = Calculator().calcParcelValue(financedLiqValue: financedLiqValue, interestRate: interestRate, numberOfParcel: numberOfParcel)



func printValues(valorLiqFinanciado: Double, taxaJuros: Double, qtdeParcelas: Double) {
    print("Valor Líquido Financiado: \(valorLiqFinanciado)")
    print("Quantidade de Parcelas: \(qtdeParcelas)")
    print("Taxa de Juros (a.m.): \(taxaJuros * 100)%")
    print("O valor fixo da parcela é de R$ \(String(format: "%.2f", parcelValue))")
}


printValues(valorLiqFinanciado: financedLiqValue, taxaJuros: interestRate, qtdeParcelas: numberOfParcel)

