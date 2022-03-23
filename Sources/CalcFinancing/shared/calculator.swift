//
//  File.swift
//  
//
//  Created by Milena Lima de Alcântara on 16/03/22.
//

import Foundation

struct Calculator {
    var interestValuesPerParcel: [Double]
    var amortizationsPerParcel: [Double]
    var debitValues: [Double]
    
    func calcParcelValue(financedLiqValue: Double, interestRate: Double, numberOfParcel: Double) -> Double {
        let parcelValue = financedLiqValue * ((pow((1 + interestRate), numberOfParcel) * interestRate) / (pow((1 + numberOfParcel), numberOfParcel) - 1))
        
        return parcelValue
    }

    func calcRateValue(debitValue: Double, interestRate: Double) {
        let rate = debitValue * interestRate
        interestValuesPerParcel.append(rate)
    }
    
    func calcAmotizedValue(parcelValue: Double, interest: Double) -> Double {
        let amortized = parcelValue - interest
        amortizationsPerParcel.append(amortized)
    }
    
}
