//
//  main.swift
//  swifty
//
//  Created by Riley Roach on 9/30/19.
//  Copyright © 2019 Riley Roach. All rights reserved.
//

//import Foundation

//print("Hello, World!")

import SwiftCLI

class GreetCommand: Command {
    let name = "greet"
    let person = Parameter()
    func execute() throws {
        stdout <<< "Hello \(person.value)!"
    }
}

let greeter = CLI(name: "greeter")
greeter.commands = [GreetCommand()]
greeter.go()
