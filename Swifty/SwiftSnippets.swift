//
//  SwiftSnippets.swift
//  Swifty
//
//  Created by Nordin on 29/09/15.
//  Copyright © 2015 SparklingMind. All rights reserved.
//

import UIKit

class SwiftSnippets: NSObject {

    func myFunctionOne() {
        print("myFunctionOne()");
    }
    
    func myFunctionTwo(message: String) {
        print(message);
    }
    
    func myFunctionThree(var1: Int, var2: Int) {
        var sum = 0
        var myVar = 10
        var realInt: Int = 8
        var text: String
        
        //realInt = 22
        
        sum = var1+var2
        myVar = myVar+2
        print("Result: ", sum, "and ", myVar, "and again ", realInt);
    }
    
    func myFunctionFour(var1: Int, var2: Int) {
        var sum = var1*var2
        
        print("Multiply: ", sum, "  Addition ", var1+var2);
    }
    
    func myFunctionPrint() {
        var message = "stuff man!"
        print("This is cool \(message)");
    }
    
    func myFunctionRetrun() -> String {
        return "Yo, wazup G! Hahahaha"
    }
    
    func myarray() {
        var arrayOfInts: [Int]
        var arrayX = [Int]()
        arrayX.append(2)
        arrayX.append(4)
        
        print(arrayX)
    }
    
    func myarrayOne() {
        var arrayOfStrings: [String] = [String]()
        
        arrayOfStrings.append("Ik ")
        arrayOfStrings.append("ben ")
        arrayOfStrings.insert("Nordin", atIndex: 2)
        
        print(arrayOfStrings)
        print(arrayOfStrings[0], arrayOfStrings[1], arrayOfStrings[2]);
    }
    
    func myArrayDictionary() {
        var dictionary1 = Dictionary<String,String>()
        var dictionary2 = ["key1":"autosleutel", "key2":"huissleutel"]
        
        dictionary1["key1"] = "Ferrari"
        dictionary1["key2"] = "Lamborgini"
        dictionary1["key3"] = "Bugatti"
        dictionary1["key4"] = "Porche"
        
        print(dictionary1)
        print(dictionary2)
        
        dictionary2["key2"] = "kamersleutel"
        
        let key = dictionary2["key2"]
        
        print("Object of key2 is ", key!)
        
        if let value = dictionary1["key3"] {
            print("Value for key3 is: ", value)
        }
        
        if dictionary1["key1"] != nil {
            print("Value for key1 is: ", dictionary1["key1"])
        }
    }
    
    func reallyCoolFunc() {
        var dictionary = Dictionary<String,String>()
        
        dictionary["key1"] = "Papa"
        dictionary["key2"] = "Mama"
        
        print(dictionary)
        
        if var _ = dictionary["key2"] {
            print("Value for key2 exist!")
        }
        
    }
}
