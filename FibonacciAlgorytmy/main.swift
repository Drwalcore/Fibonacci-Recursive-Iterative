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
print ("Enter Integer!")
let userInput = readLine()
var selectedInt = Int(userInput!)


func fiboIter(_ n: Int) -> Int{
   
    var fn_0:Int = 0;
    var fn_1:Int = 1;
   
    if n == 0 || n == 1 {
    
    return n
    
    }

    else if n > 1 {
    
    for _ in 2...n {
    
        let fn = fn_0
        fn_0 =  fn_1 + fn_0
        fn_1 = fn
        
        }
    }
    
    return fn_0
}

func fiboRecu(_ n: Int) -> Int{

    if n==1 || n == 2 {
        
        return 1
        
    } else {
        
        return fiboRecu(n - 1) + fiboRecu(n - 2)
    }

    
}

print( "Fibonacci Sequence - Iterative\n" )


let startIter = DispatchTime.now()

    if let selectedInt = selectedInt{
        
        for i in 1 ... selectedInt {
            
            let fibonacci = fiboIter(selectedInt)
            print( "Fibonacci of \(i) is \(fibonacci)" )
        }

}

let endIter = DispatchTime.now()


print( "Fibonacci Sequence - Recursive\n" )

let startRecu = DispatchTime.now()

    if let selectedInt = selectedInt {
    
        for i in 1 ... selectedInt {
            
            let fibonacci = fiboRecu(selectedInt)
            print( "Fibonacci of \(i) is \(fibonacci)" )
        }

    
}

let endRecu = DispatchTime.now()


let nanoIter = endIter.uptimeNanoseconds - startIter.uptimeNanoseconds
print ("Iteration has taken \(nanoIter) nanoseconds to complete")

let nanoRecu = endRecu.uptimeNanoseconds - startRecu.uptimeNanoseconds
print ("Recursive has taken \(nanoRecu) nanoseconds to complete")

