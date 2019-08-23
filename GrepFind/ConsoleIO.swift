//
//  ConsoleIO.swift
//  GrepFind
//
//  Created by Alex Hawley on 8/22/19.
//  Copyright © 2019 Alex Hawley. All rights reserved.
//

import Foundation

enum OutputType {
    case error
    case standard
}

class ConsoleIO {
    
    func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\(message)")
        case .error:
            fputs("Error: \(message)\n", stderr)
        }
    }
    
    func printUsage() {
        
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        writeMessage("usage:")
        writeMessage("\(executableName) -g string1")
        writeMessage("or")
        writeMessage("\(executableName) -f string1")
        writeMessage("or")
        writeMessage("\(executableName) -t string1")
        writeMessage("or")
        writeMessage("\(executableName) -e strin1")
        writeMessage("or")
        writeMessage("\(executableName) -x string1")
        writeMessage("or")
        writeMessage("\(executableName) -c string1")
        writeMessage("or")
        writeMessage("\(executableName) -h to show usage information")
        writeMessage("Type \(executableName) without an option to enter interactive mode.")
    }

}
