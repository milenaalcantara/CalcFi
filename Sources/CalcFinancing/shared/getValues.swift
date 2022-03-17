//
//  File.swift
//  
//
//  Created by Milena Lima de Alcântara on 15/03/22.
//


func getString(msg: String) -> String {
    print(msg)
    let input: String? = readLine()
    if let string = input {
        return string
    }
    return ""
}

func getInt(msg: String) -> Int {
    print(msg)
    let input: String? = readLine()
    if let string = input, let number = Int(string) {
        return number
    }
    return 0
}

func getDouble(msg: String) -> Double {
    let input: String? = formatDoubleInput(msg: msg) // recebe uma string formatada, sem % e com , trocada por .
    let msgAlert = "Valor inválido! Por favor, digite novamente: "
    
    var optional = true
    
    while(optional) {
        if let string = input, let number = Double(string) { // verifica se veio algo no input
            let numDouble = checkDoubleValue(value: number, msg: msgAlert) // verifica se é maior que 0.0, se digitou numeros
            optional = true
            return numDouble
        } else {
            print(optional)
            optional = false
        }
    }
    
    return 0.0
}

func formatDoubleInput(msg: String) -> String {
    let input: String = getString(msg: msg) 
    
    let formattedValue = input
        .replacingOccurrences(of: "," , with: ".") // Substituir virgula
        .replacingOccurrences(of: "%" , with: "") // remover %
    
    return formattedValue
}

func checkDoubleValue(value: Double, msg: String) -> Double {
    var valueFinal: Double = value
    
    while(valueFinal == 0.0){
        let valueValidated = getDouble(msg: msg)
        valueFinal = valueValidated
    }
//    print(valueFinal)
    return valueFinal
}
//
//func checkNilValue(value: String, msg: String) -> Double {
//    var valueAux: Double?
//    var valueFinal: Double = 0.0
//
//    while(true){
//        let valueValidated = getDouble(msg: msg)
//        valueFinal = valueValidated
//    }
////    print(valueFinal)
//    return valueFinal
//}
