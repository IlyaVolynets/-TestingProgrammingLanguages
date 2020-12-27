//
//  SaveManager.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/24/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import Foundation
class SaveManager {
    var arrayOfMistakes = [QuestionAndAnswer]()
    static let shared = SaveManager()
    private init(){}
    
    func setLogin(array:  [String]){
        UserDefaults.standard.set(array, forKey: "saves")
        UserDefaults.standard.synchronize()
    }
    
    func getLogin() -> [String]{
        if let array = UserDefaults.standard.array(forKey: "saves") as? [String] {
            return array
        }else{
            return ["0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--", "0" , "--" , ""]
        }
    }
    
    func setMistakeArray(array:  [QuestionAndAnswer]){
        let arrayOfMistakes = NSKeyedArchiver.archivedData(withRootObject: array)
        UserDefaults.standard.set(arrayOfMistakes, forKey: "mistake")
        UserDefaults.standard.synchronize()
    }
    
    func getMistakeArray() -> [QuestionAndAnswer]{
        if let array = UserDefaults.standard.data(forKey: "mistake"),
            let arrayOfMistakes = NSKeyedUnarchiver.unarchiveObject(with: array) as? [QuestionAndAnswer] {
            return arrayOfMistakes
        }else{
            return []
        }
    }

}
