//
//  File 2.swift
//  
//
//  Created by Milena Lima de Alcântara on 23/03/22.
//

import Foundation


class CLI {
    
    var lastChoosedOption = 99
    var numSimulatorPerUser = 0
    var inputManager = InputManager(type: .readLine)
    
    
    func run() {
        while lastChoosedOption != 0 {
            firstTime()

            printMainMenu()
            askForAnOption()
            runMenuOption()
        }
    }

    func firstTime() {
        let firstTimeGreeting = """
        Olá, bem vindo(a) ao nosso simulador de financiamento!
        
        Vamos começar?!
        """
        
        
        if(numSimulatorPerUser == 0) {
            print(firstTimeGreeting)
        }
        
        numSimulatorPerUser += 1
    }

    func printMainMenu() {
        let menu = """
        
        Selecione uma opção do menu:

        1 - Realizar uma nova simulação
        0 - Finalizar programa
        """

        print(menu)
    }

    func runMenuOption() {
        switch lastChoosedOption {
            case 0:
                print("Volte sempre!")
                exit(0)
            case 1:
                newFinancing()
            default:
                print("\nOpção inválida!")
        }
    }

    func runMenuTable() {
        let menu = """

        Qual tabela deseja selecionar?

        1 - PRICE
        2 - SAC

        """
        print(menu)
    }

    func TableOption() {
        switch lastChoosedOption {
            case 1:
                print("Tabela PRICE")
            case 2:
                print("Tabela SAC")
            default:
                print("\nOpção inválida")
        }
    }
    
    //Mark: User Inputs
    func askForString(question: String) -> String {
        print(question)
        guard let answer = inputManager.getInput() else{ // guard é como uma conferencia do valor
            print("Comando inválido")
            exit(0)
        }

        return answer
    }

    func formatDoubleInput(value: String) -> String {
        let formattedValue = inputManager.getInput()
            .replacingOccurrences(of: "," , with: ".") // Substituir virgula
            .replacingOccurrences(of: "%" , with: "") // remover %

        return formattedValuefunc
    }

    func askForDouble(question: String) -> Double {
        print(question)
        var finalNumber: Double?
        while finalNumber == nil {
            let answerString = inputManager.getInput()!
            finalNumber = Double(formatDoubleInput(value: answerString))
            if finalNumber == nil {
                print("Valor inválido, digite um número:")
            }
        }

        return finalNumber!
    }

    func askForInt(question: String) -> Int {
        print(question)
        var finalNumber: Int?
        while finalNumber == nil {
            let answerString = inputManager.getInput()!
            finalNumber = Int(answerString)
            if finalNumber == nil {
                print("Input inválido, digite um número:")
            }
        }

        return finalNumber!
    }

    func askForAnOption() -> Int {
        guard let optionString = inputManager.getInput(), let option = Int(optionString) else {
            lastChoosedOption = 99
            return 99
        }
        lastChoosedOption = option
        return option
    }
    
    //Mark: System Funtionalities
    func newFinancing() {
        let financingName = askForString(question: "Qual o bem que deseja financiar?")
        let financedLiqValue = askForDouble(question: "Qual o valor líquido do \(financingName) que deseja financiar?")
        let numberOfParcel = askForInt(question: "Em quantas parcelas deseja realizar o pagamento?")
        let interestRate = askForDouble(question: "Qual a taxa de juros cobrada pelo banco (a.m.)?")
    }
    
    
}
