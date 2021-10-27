//
//  ToDoIntentHandler.swift
//  TODOIntent
//
//  Created by Roongroj on 27/10/2564 BE.
//

import Foundation
import Intents

class ToDoIntentHandler : NSObject, ToDoIntentHandling {
  @available(iOS 12.0, *)
//    func resolveTitle(for intent: ToDoIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
//        guard let title = intent.title else {
//            completion(INStringResolutionResult.needsValue())
//            return
//        }
//        completion(INStringResolutionResult.success(with: title))
//    }
    
    func resolveDetails(for intent: ToDoIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
        guard let details = intent.details else {
            completion(INStringResolutionResult.needsValue())
            return
        }
        completion(INStringResolutionResult.success(with: details))
    }
    
    func handle(intent: ToDoIntent, completion: @escaping (ToDoIntentResponse) -> Void) {
        // let listSize = addTODO(title: intent.title!, details: intent.details!)
        completion(ToDoIntentResponse.success(details: intent.details!))
    }
    
    //implement this method to get the to-do list from UserDefaults, add to it, save it again to user defaults
    //and return its size
    func addTODO(title: String, details: String) -> Int{
      return 1
    }
}

