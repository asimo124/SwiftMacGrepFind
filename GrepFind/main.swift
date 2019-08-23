//
//  main.swift
//  GrepFind
//
//  Created by Alex Hawley on 8/22/19.
//  Copyright © 2019 Alex Hawley. All rights reserved.
//

import Foundation

let grepFind = GrepFind()
if CommandLine.argc < 2 {
    //TODO: Handle interactive mode
} else {
    grepFind.staticMode()
}

