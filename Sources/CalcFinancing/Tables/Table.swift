//
//  File.swift
//  
//
//  Created by Milena Lima de Alcântara on 28/03/22.
//

import Foundation

class Table {

    var financedLiqValue: Double
    var interestRate: Double
    var numberOfParcel: Int

    var interestValuesPerParcel: [Double]
    var debitValues: [Double]

    init(financedLiqValue: Double, interestRate: Double, numberOfParcel: Int) {
 
        self.financedLiqValue = financedLiqValue
        self.interestRate = interestRate / 100
        self.numberOfParcel = numberOfParcel

        self.interestValuesPerParcel = []

        self.debitValues = []
        self.debitValues.append(financedLiqValue)
    }

    func printInitialValues() {
        print("valor líquido financiado: R$ \(self.financedLiqValue)")
        print("taxa de juros: R$ \(self.interestRate * 100)%")
        print("número de parcelas: \(self.numberOfParcel)")
    }

    func calcRateValue(debitValue: Double, interestRate: Double) -> Double {
        let rateValue = debitValue * interestRate
        interestValuesPerParcel.append(rateValue)

        return rateValue
    }

    func run(){
        print("Classe Mãe")
    }
}
