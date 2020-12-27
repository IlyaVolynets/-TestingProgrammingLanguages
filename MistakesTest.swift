//
//  MistakesTest.swift
//  Diplom
//
//  Created by Ilya Volynets on 6/10/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import UIKit
import Foundation


class MistakesTest: UIViewController  {
    
    @IBOutlet weak var firstAnswer: UILabel!
    @IBOutlet weak var secondAnswer: UILabel!
    @IBOutlet weak var thirdAnswer: UILabel!
    @IBOutlet weak var fourthAnswer: UILabel!
    @IBOutlet weak var trueAnswer: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var endTest: UIButton!
    @IBOutlet var arrayOfTapLabel: [UITapGestureRecognizer]!
    @IBOutlet var arrayOfLabel: [UILabel]!
    
    var arrayMistakes = [QuestionAndAnswer]()
    var numberQuestion = 0
    var countElementInArray = 0
    var arrayOfGreenLabel = [Int]()
    var arrayOfRedLabel = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Constants.countTrueAnswer = 0
        endTest.isHidden = true
        arrayMistakes.removeAll()
        countElementInArray = Constants.arrayOfMistakes.count
        
        Constants.arrayOfMistakes.shuffle()
        addOfRedLabel()
        addOfGreenLabel()
        printArray()
        countLabel.text = "1 из " + String(countElementInArray)
    
    }
    @IBAction func endTestMistakes(_ sender: UIButton) {
        
        Constants.arrayOfMistakes.removeAll()
        Constants.arrayOfMistakes = arrayMistakes
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "mainView")
        self.present(controller, animated: true, completion: nil)
   
        
    }
    
    
    @IBAction func rigthSwipe(_ sender: UISwipeGestureRecognizer) {
  
        printPreviousQuestion()
    }
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        printNextQuestion()
    }
    
    @IBAction func tapLabel(_ sender: UITapGestureRecognizer) {
        var i = 0
        var j = 0
        
        if arrayOfGreenLabel[numberQuestion] == 5 && arrayOfRedLabel[numberQuestion] == 5 {
            for element in arrayOfTapLabel {
                if element == sender{
                    
                    if arrayOfLabel[i].text == trueAnswer.text{
                       Constants.countTrueAnswer += 1
                        arrayOfLabel[i].backgroundColor = UIColor.green
                        arrayOfGreenLabel[numberQuestion] = i

                    } else {
                        arrayMistakes.append(QuestionAndAnswer(question: questionLabel.text!, firstAnswer: firstAnswer.text!, secondAnswer: secondAnswer.text!, thirdAnswer: thirdAnswer.text!, fourthAnswer: fourthAnswer.text!, trueAnswer: trueAnswer.text!))
                        
                        arrayOfLabel[i].backgroundColor = UIColor.red
                        arrayOfRedLabel[numberQuestion] = i
                        
                        for element in arrayOfLabel{
                            if element.text == trueAnswer.text{
                                element.backgroundColor = UIColor.green
                            }
                            
                        }
                    }
                    
                }
                i += 1
            }
        }
        for element in arrayOfRedLabel{
            if element == 5{
                j += 1
            }
        }
        for element in arrayOfGreenLabel{
            if element == 5{
                j += 1
            }
        }
        print(j)
        print(Constants.arrayOfMistakes.count)
        if j == Constants.arrayOfMistakes.count {
            endTest.isHidden = false
        }
        
    }
    
    @IBAction func printPreviusQuestion(_ sender: UIButton) {
        
        printPreviousQuestion()
    }
    
    @IBAction func printNextQuestion(_ sender: UIButton) {
        printNextQuestion()
    }
    
}

private extension MistakesTest{
    
    func shuffleMistakesInArray() {
        var array : [String] = []
        for element in Constants.arrayOfMistakes{
            array.removeAll()
            array.append(element.firstAnswer)
            array.append(element.secondAnswer)
            array.append(element.thirdAnswer)
            array.append(element.fourthAnswer)
            array.shuffle()
            element.firstAnswer = array[0]
            element.secondAnswer = array[1]
            element.thirdAnswer = array[2]
            element.fourthAnswer = array[3]
        }
}

    func printArray(){
        questionLabel.text = Constants.arrayOfMistakes[numberQuestion].question
        firstAnswer.text = Constants.arrayOfMistakes[numberQuestion].firstAnswer
        secondAnswer.text = Constants.arrayOfMistakes[numberQuestion].secondAnswer
        thirdAnswer.text = Constants.arrayOfMistakes[numberQuestion].thirdAnswer
        fourthAnswer.text = Constants.arrayOfMistakes[numberQuestion].fourthAnswer
        trueAnswer.text = Constants.arrayOfMistakes[numberQuestion].trueAnswer
    }
    
    func printNextQuestion(){
        clearLabelQuestionColor()
        numberQuestion += 1
        if numberQuestion == Constants.arrayOfMistakes.count{
            numberQuestion = 0
        }
        //clearLabelQuestionColor()
        printArray()
        colorForLabel()
        
        countLabel.text =   String(numberQuestion + 1) + " из " + String(countElementInArray)
        
    }
    
    func printPreviousQuestion(){
        clearLabelQuestionColor()
        numberQuestion -= 1
        if numberQuestion == -1{
            numberQuestion = Constants.arrayOfMistakes.endIndex - 1
        }
        //clearLabelQuestionColor()
        printArray()
        colorForLabel()
        
        countLabel.text =   String(numberQuestion + 1) + " из " + String(countElementInArray)
    }
    
    func clearLabelQuestionColor() {
        for element in arrayOfLabel{
            element.backgroundColor = UIColor.clear
        }
    }
    
    func addOfRedLabel(){
        var coun = 0
        while coun < countElementInArray {
            arrayOfRedLabel.append(5)
            coun += 1
        }
        
    }
    
    
    func addOfGreenLabel(){
        var coun = 0
        while coun < countElementInArray {
            arrayOfGreenLabel.append(5)
            coun += 1
        }
        
    }
    
    func colorForLabel(){
        
        if arrayOfGreenLabel[numberQuestion] != 5 {
            arrayOfLabel[arrayOfGreenLabel[numberQuestion]].backgroundColor = UIColor.green
        } else if arrayOfRedLabel[numberQuestion] != 5{
            arrayOfLabel[arrayOfRedLabel[numberQuestion]].backgroundColor = UIColor.red
            for element in arrayOfLabel{
                if element.text == trueAnswer.text{
                    element.backgroundColor = UIColor.green
                }
            }

        }
    }
    
}
