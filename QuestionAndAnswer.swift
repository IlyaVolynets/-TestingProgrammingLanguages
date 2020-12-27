//
//  QuestionAndAnswer.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/14/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import Foundation

class QuestionAndAnswer  {
    
    var question : String
    var firstAnswer : String
    var secondAnswer : String
    var thirdAnswer : String
    var fourthAnswer : String
    var trueAnswer : String
    
    init(question: String, firstAnswer : String , secondAnswer : String , thirdAnswer : String , fourthAnswer : String , trueAnswer : String) {
        
        self.question = question
        self.firstAnswer = firstAnswer
        self.secondAnswer = secondAnswer
        self.thirdAnswer = thirdAnswer
        self.fourthAnswer = fourthAnswer
        self.trueAnswer = trueAnswer
        
    }
    
   
}
