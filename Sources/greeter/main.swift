//
//  main.swift
//  greeter
//
//  Created by Riley Roach on 9/30/19.
//  Copyright © 2019 Riley Roach. All rights reserved.
//


import SwiftCLI

class GreetCommand: Command {
    let name: String = "greet"
    let shortDescription: String = "Say hello to <input>"

    let person = Parameter()

    let loud = Flag("-l", "--loud", description: "Say the greeting loudly")
    let quiet = Flag("-q", "--quiet", description: "Say the greeting quietly")

    func execute() throws {
        let greeting = "Hello \(person.value)!"

        if loud.value {
            stdout <<< greeting.uppercased()
        }
        else if quiet.value {
            stdout <<< greeting.lowercased()
        }
        else {
            stdout <<< greeting
        }
    }
}

let greeter = CLI(
    name: "greeter",
    version: "0.0.1",
    description: "Greeter - a friendly greeter"
)

greeter.commands = [GreetCommand()]
greeter.go()
