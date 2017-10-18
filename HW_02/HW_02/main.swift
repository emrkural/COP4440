//
//  main.swift
//  HW_02
//
//  Created by Emre Kural on 14.10.2017.
//  Copyright © 2017 Emre Kural. All rights reserved.
//


//1.Write a function that returns tuple.
func square(a: Int) -> (Int, Int) {
    return (a, a)
}

//2.Write a function that returns tuple with parameter labels.

func rect(_ a: Int, _ b: Int) -> (perimeter: Int, area: Int) {
    return (perimeter: 2*a + 2*b, area: a*b)
}

//3.Write switch control that checks a tuple values and executes different cases.
typealias rectangle = (w: Int, l: Int)
func rectr(_ r: rectangle) {
    let z = rect(r.w, r.l)
    switch r {
    case (0, _), (_, 0), (0, 0):
        print("Not a rectangle")
    case let (a, b) where a == b:
        print("This is a square with perimeter: \(z.perimeter) and area: \(z.area).")
    default:
        print("This is a rectangle with perimeter: \(z.perimeter) and area: \(z.area).")
    }
}


//4.Put the tuple type into typealias and use it in a function while returning.
typealias prism = (surfaceArea: Int, volume: Int)

func rectanglePrism(_ w: Int, _ l: Int, _ h: Int) -> prism {
    return (surfaceArea: 2*w*l + 2*w*h + 2*l*h, volume: w*l*h)
}


//5.Create an array with 5 elements, different country cities are preferred.
let citiesOfNorway = ["Oslo", "Bergen", "Trondheim", "Stavenger", "Drammen"]


//6.Loop over the created array and process the elements using for loop
func printCities(_ cities: [String]) {
    for city in cities {
        print(city)
    }
}

