//
//  IntentHandler.swift
//  TODOIntent
//
//  Created by Roongroj on 27/10/2564 BE.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        guard intent is ToDoIntent else {
            fatalError("Unhandled Intent error : \(intent)")
        }
        return ToDoIntentHandler()
    }
    
}
