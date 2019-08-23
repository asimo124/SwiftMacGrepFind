//
//  GrepFind.swift
//  GrepFind
//
//  Created by Alex Hawley on 8/22/19.
//  Copyright © 2019 Alex Hawley. All rights reserved.
//

import Foundation

enum OptionType: String {
    case glob = "g"
    case searchFiles = "f"
    case searchText = "t"
    case exclusion1 = "e"
    case exclusion2 = "x"
    case exclusion3 = "c"
    case unknown
    
    init(value: String) {
        switch value {
        case "g": self = .glob
        case "f": self = .searchFiles
        case "t": self = .searchText
        case "e": self = .exclusion1
        case "x": self = .exclusion2
        case "c": self = .exclusion3
        default: self = .unknown
        }
    }
}

class GrepFind {
    
    let consoleIO = ConsoleIO()
    
    func staticMode() {
        
        consoleIO.printUsage()
        //1
        let argCount = CommandLine.argc
        //2
        let argument = CommandLine.arguments[1]
        //3
        let (option, value) = getOption(argument.substring(from: argument.index(argument.startIndex, offsetBy: 1)))
        //4
        consoleIO.writeMessage("Argument count: \(argCount) Option: \(option) value: \(value)")
 
        /*/
        //1
        switch option {
            case .anagram:
                //2
                if argCount != 4 {
                    if argCount > 4 {
                        consoleIO.writeMessage("Too many arguments for option \(option.rawValue)", to: .error)
                    } else {
                        consoleIO.writeMessage("Too few arguments for option \(option.rawValue)", to: .error)
                    }
                consoleIO.printUsage()
                } else {
                    //3
                    let first = CommandLine.arguments[2]
                    let second = CommandLine.arguments[3]
                    if first.isAnagramOf(second) {
                        consoleIO.writeMessage("\(second) is an anagram of \(first)")
                    } else {
                        consoleIO.writeMessage("\(second) is not an anagram of \(first)")
                    }
                }
            case .palindrome:
                //4
                if argCount != 3 {
                    if argCount > 3 {
                        consoleIO.writeMessage("Too many arguments for option \(option.rawValue)", to: .error)
                    } else {
                        consoleIO.writeMessage("Too few arguments for option \(option.rawValue)", to: .error)
                    }
                    consoleIO.printUsage()
                } else {
                    //5
                    let s = CommandLine.arguments[2]
                    let isPalindrome = s.isPalindrome()
                    consoleIO.writeMessage("\(s) is \(isPalindrome ? "" : "not ")a palindrome")
                }
            //6
            case .help:
                consoleIO.printUsage()
            case .unknown:
                //7
                consoleIO.writeMessage("Unknown option \(value)")
                consoleIO.printUsage()
        }
        */
    }
    
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }
    
}
