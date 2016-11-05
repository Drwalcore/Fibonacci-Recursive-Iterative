//Porównanie Algorytmu Iteracyjnego i Rekurencyjnego w języku Swift 3.0
//Autor: Michał Czerniakowski
//Grupa: Z308
//Data: 4.11.2016

//  main.swift
//
//  Created by Michał Czerniakowski on 04.11.2016.
//  Copyright © 2016 Michał Czerniakowski. All rights reserved.


import Foundation

print( "Fibonacci Times\n\n" )
print ("Enter Integer!\n")

let userInput = readLine()
var selectedInt = Int(userInput!)


func fiboIter(_ n: Int) -> Int{
   
    var fn_0:Int = 0
    var fn_1:Int = 1
    var fn: Int = 0
    
    if n == 0 || n == 1 {
    
    return n
    
    }

    else if n > 1 {
    
    for _ in 2...n {
    
        fn = fn_1 + fn_0
        fn_0 =  fn_1
        fn_1 = fn
        
        }
    }
    
    return fn
}


func fiboRecu(_ n: Int) -> Int{

    if n == 0 || n == 1 {
        
        return n
        
    } else if n > 1 {
        
        return fiboRecu(n - 1) + fiboRecu(n - 2)
    }

    return n
}

print( "\nFibonacci Sequence - Iterative Method\n" )


let startIter = DispatchTime.now()

    if let selectedInt = selectedInt{
        
        for i in 1 ... selectedInt {
            
            let fibonacci = fiboIter(i)
            
            print( "Fibonacci of \(i) is \(fibonacci)" )
            
        }

}

let endIter = DispatchTime.now()


print( "\nFibonacci Sequence - Recursive Method\n" )

let startRecu = DispatchTime.now()

    if let selectedInt = selectedInt {
    
        for i in 1 ... selectedInt {
            
            let fibonacci = fiboRecu(i)
            
            print( "Fibonacci of \(i) is \(fibonacci)" )
        }

    
}

let endRecu = DispatchTime.now()


let nanoIter = endIter.uptimeNanoseconds - startIter.uptimeNanoseconds
let secIter = nanoIter/1000000000
print ("\nIteration has taken \(secIter) seconds = \(nanoIter) nanoseconds to complete")

let nanoRecu = endRecu.uptimeNanoseconds - startRecu.uptimeNanoseconds
let secRecu = nanoRecu/1000000000
print ("\nRecursive has taken \(secRecu) seconds to complete\n")
