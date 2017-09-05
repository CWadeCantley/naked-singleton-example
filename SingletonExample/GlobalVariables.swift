//
//  SingletonManager.swift
//  SingletonExample
//
//  Created by Chris Cantley on 11/25/14.
//  Copyright (c) 2014 Chris Cantley. All rights reserved.
//

class GlobalVariables {
    
    // These are the properties you can store in your singleton
    var myName: String = "bob"
    
    
    // Here is how you would get to it without there being a global collision of variables.
    // , or in other words, it is a globally accessable parameter that is specific to the 
    // class.
    class var sharedManager: GlobalVariables {
        struct Static {
            static let instance = GlobalVariables()
        }
        return Static.instance
    }
}