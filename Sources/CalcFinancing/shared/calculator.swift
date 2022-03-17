//
//  File.swift
//  
//
//  Created by Milena Lima de Alcântara on 16/03/22.
//

import Foundation


func calcValorParcela(valorLiqFinanciado: Double, taxaJuros: Double, qtdeParcelas: Double) -> Double {
    let valorParcela = valorLiqFinanciado * ((pow((1 + taxaJuros), qtdeParcelas) * taxaJuros) / (pow((1 + taxaJuros), qtdeParcelas) - 1))
    
    return valorParcela
}

func calcValorJuros(valorLiqFinanciado: Double, taxaJuros: Double) -> Double {
    let valorJuros = valorLiqFinanciado * taxaJuros
    
    return valorJuros
}
