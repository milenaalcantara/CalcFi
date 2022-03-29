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

    var financingName: String = ""
    var financedLiqValue: Double = 0.0
    var numberOfParcel: Int = 1
    var interestRate: Double =  0.0

    
    func run() {
        if(numSimulatorPerUser == 0) {
            firstTime()
            numSimulatorPerUser += 1
        }
        printMainMenu()
        lastChoosedOption = askForAnOption()
        runMenuOption()
    }

    func firstTime() {
        let firstTimeGreeting = """
        Olá, bem vindo(a) ao nosso simulador de financiamento!
        
        Vamos começar?!
        """
        
        print(firstTimeGreeting)
        
        numSimulatorPerUser += 1
    }

    func bye(){
        let messageBye = """

        ---------------------------------------------------------------------------
        Obrigado por usar nosso sistema, esperamos que tenha sido útil para você ☺️

        Volte sempre!!!
        ---------------------------------------------------------------------------
        
        """

        print(messageBye)
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
                bye()
                exit(0)
            case 1:
                print("Nova Simulação!")
                runMenuTable()
                lastChoosedOption = askForAnOption()
                runTableOption()
            default:
                print("\nOpção inválida!")
                resolveInvalidMainOption()
        }
    }

    func runMenuTable() {
        let menu = """

        Qual tabela deseja selecionar?

        1 - PRICE
        2 - SAC

        """
        print(menu)

        // feature: 3 - Comparar tabela PRICE e SAC
    }

    func runTableOption() {
        switch lastChoosedOption {
            case 1:
                newFinancing()
                let price = PRICE(financedLiqValue: self.financedLiqValue, interestRate: self.interestRate, numberOfParcel: self.numberOfParcel)

                callTable(table: price)
            case 2:
                newFinancing()
                let sac = SAC(financedLiqValue: self.financedLiqValue, interestRate: self.interestRate, numberOfParcel: self.numberOfParcel)

                callTable(table: sac)
            default:
                print("\nOpção inválida!")
                resolveInvalidTableOption()
        }
    }
    
    //Mark: User Inputs
    func askForString(question: String) -> String {
        print(question)
        guard let answer = inputManager.getInput() else{ // guard é como uma conferencia do valor
            print("Comando inválido")
            return ""
        }

        return answer
    }

    func formatDoubleInput(value: String) -> String {
        let formattedValue = value
            .replacingOccurrences(of: "," , with: ".") // Substituir virgula
            .replacingOccurrences(of: "%" , with: "") // remover %

        return formattedValue
    }

    func askForDouble(question: String) -> Double {
        print(question)
        var finalNumber: Double?
        while finalNumber == nil || finalNumber! < 0 {
            let answerString = inputManager.getInput()!
            finalNumber = Double(formatDoubleInput(value: answerString))
            if finalNumber == nil || finalNumber! < 0 {
                print("Valor inválido, digite um número:")
            }
        }

        return finalNumber!
    }

    func askForInt(question: String) -> Int {
        print(question)
        var finalNumber: Int?
        while finalNumber == nil || finalNumber! < 0 {
            let answerString = inputManager.getInput()!
            finalNumber = Int(answerString)
            if finalNumber == nil || finalNumber! < 0 {
                print("Valor inválido, digite um número:")
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
    
    func resolveInvalidMainOption() {
        printMainMenu()
        lastChoosedOption = askForAnOption()
        runMenuOption()
    }
    
    func resolveInvalidTableOption() {
        runMenuTable()
        lastChoosedOption = askForAnOption()
        runTableOption()
    }
    
    // Mark: System Funtionalities
    func newFinancing() {
        self.financingName = askForString(question: "Qual o bem que deseja financiar?")
        self.financedLiqValue = askForDouble(question: "Qual o valor líquido do(a) \(self.financingName) que deseja financiar?")
        self.numberOfParcel = askForInt(question: "Em quantas parcelas deseja realizar o pagamento?")
        self.interestRate = askForDouble(question: "Qual a taxa de juros cobrada pelo banco (a.m.)?")
    }

    func callTable(table: Table){
        table.run()
        self.run()
    }
    
}
