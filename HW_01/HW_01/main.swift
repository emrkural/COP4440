//
//  main.swift
//  HW_01
//
//  Created by Emre Kural on 8.10.2017.
//  Copyright © 2017 Emre Kural. All rights reserved.
//


// Two functions that overload (1)
func sendMessage() {
    print("Hello, there!")
}

func sendMessage(to recipient: String) {
    print("Hello, \(recipient)!")
}

// Default parameter value (2)
func sendShoutingMessage(to recipient: String, shouting: Bool = true) {
    if shouting {
        print("HELLO \(recipient.uppercased())!")
    } else {
        sendMessage(to: recipient)
    }
}

// One parameter, one variadic parameter (3)
func sendMessage(_ message: String, to recipients: String...) {
    var messageToSend = message
    for recipient in recipients {
        messageToSend.append(", \(recipient)")
    }
    messageToSend.append("!")
    print(messageToSend)
}

// Ignored external name (4)
func printInt(_ x: Int) {
    print("\(x)!")
}

// Function inside a function (5)
func printSum(_ x: Int, _ y: Int){
    func sum(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    printInt(sum(x, y))
}

// Recursive function (6)
func printToInt(_ x: Int) {
    if x > 1 {
        printToInt(x - 1)
    }
    printInt(x)
}


//Typealias for a function type which has different parameter types (7)
typealias Number = Int

func printNumber(_ n: Number) {
    print("The number is \(n)!")
}

// function passed as a value to another function. (8)
func printResult(_ x: Int, _ y: Int, operation f: (Int, Int) -> Int) {
    printInt(f(x, y))
}


// Testing

sendMessage()
sendMessage(to: "Zeynep")
sendShoutingMessage(to: "Zeynep")
sendMessage("Hi", to: "Zeynep", "Emre", "Abdullah")

printInt(7)
printSum(3, 7)
printToInt(3)
printNumber(8)

printResult(10, 3) { (x, y) -> Int in
    return x - y
}


