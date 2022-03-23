//
//  File.swift
//  
//
//  Created by Milena Lima de Alcântara on 16/03/22.
//

import Foundation

struct Calculator {
    
    func calcParcelValue(financedLiqValue: Double, interestRate: Double, numberOfParcel: Double) -> Double {
        let parcelValue = financedLiqValue * ((pow((1 + interestRate), numberOfParcel) * interestRate) / (pow((1 + numberOfParcel), numberOfParcel) - 1))
        
        return parcelValue
    }

    func calcRateValue(financedLiqValue: Double, interestRate: Double) -> Double {
        let rateValue = financedLiqValue * interestRate
        
        return rateValue
    }
    
}
