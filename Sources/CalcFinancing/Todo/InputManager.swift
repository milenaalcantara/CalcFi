//
//  File.swift
//  
//
//  Created by Milena Lima de Alcântara on 23/03/22.
//

import Foundation

class InputManager {
    
    enum InputType {
        case mock
        case readLine
    }

    var type = InputType
    var mockedValues: [String]
    var inputControl = 0


    init(type: InputType = .readLine, values: [String] = []) {
        self.type = type
        mockedValues = values
    }

    func getInput() -> String? {
        switch type {
            case .mock:
                return mockedInput()
            case .readLine:
                return readLine()
        }
    }

    func mockedInput() -> String? {
        if inputControl < mockedValues.count {
            let input = mockedValues[inputControl]
            inputControl += 1
            return input
        }
        return nil
    }

}
