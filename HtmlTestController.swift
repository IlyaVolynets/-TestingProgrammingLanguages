//
//  HtmlTestController.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/14/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//
import UIKit
import Foundation

//доделать ошибки
//доделать  html вопросы

class HtmlTestController: UIViewController  {
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var labelNine: UILabel!
    @IBOutlet weak var labelTen: UILabel!
    @IBOutlet weak var firstAnswerLabel: UILabel!
    @IBOutlet weak var secondAnswerLabel: UILabel!
    @IBOutlet weak var thirdAnswerLabel: UILabel!
    @IBOutlet weak var fourthAnswerLabel: UILabel!
    @IBOutlet weak var trueAnswerLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var endTestButton: UIButton!
    @IBOutlet var arrayOfTapLabel: [UITapGestureRecognizer]!
    @IBOutlet var arrayOfLabel: [UILabel]!
    @IBOutlet var arrayOfAnswerLabel: [UILabel]!
    @IBOutlet var arrayOfTenLabel: [UITapGestureRecognizer]!
    
    var numberQuestion = 0
    var arrayOfRedLabel = [5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5]
    var arrayOfGreenLabel = [5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 , 5 ,5]
    var arrayOfTrueAnswer = [TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1"),
                             TrueAnswer(answer: "", trueAnswer: "1")]
    var arrayOfNumberQuestion = [Int]()
    var counterSec = 0
    var counterMin = 0
    var timer = Timer()
   

  override func viewDidLoad() {
       super.viewDidLoad()
        Constants.countTrueAnswer = 0
        Constants.mainArray.shuffle()
        shuffleAnswerInArray()
        borderLabel()
        printArray()
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
   }
    
    @IBAction func finishTestButton(_ sender: UIButton) {
        timer.invalidate()
        Constants.timerCountSec = counterSec
        Constants.timerCountMin = counterMin
        //Constants.countTrueAnswer = 0
        for element in arrayOfTrueAnswer{
            if element.answer == element.trueAnswer{
                print(element.answer, element.trueAnswer)
               // Constants.countTrueAnswer += 1
                
            }
            
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "endController")
        self.present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func tapOnTenLabel(_ sender: UITapGestureRecognizer) {
        
        var i = 0
        for element in arrayOfTenLabel {
            if element == sender{
                numberQuestion = i
                clearLabelQuestionColor()
                colorYellowForLabel()
                printArray()
                borderLabel()
            }
        i += 1
    }
    }
    
    @IBAction func tapOnLabel(_ sender: UITapGestureRecognizer) {
      // clearLabelQuestionColor()
        var i = 0
        var j = 0
        
        
        if arrayOfGreenLabel[numberQuestion] == 5 && arrayOfRedLabel[numberQuestion] == 5 {
        for element in arrayOfTapLabel {
            if element == sender{
                
                if arrayOfAnswerLabel[i].text == trueAnswerLabel.text{
                    Constants.countTrueAnswer += 1
                    arrayOfAnswerLabel[i].backgroundColor = UIColor.green
                    arrayOfGreenLabel[numberQuestion] = i
                    arrayOfLabel[numberQuestion].backgroundColor = UIColor.green
                    
                } else {
                   
//                    for element in Constants.arrayOfMistakes{
//                        
//                        if element.question == questionLabel.text &&
//                            element.firstAnswer == firstAnswerLabel.text &&
//                            element.secondAnswer == secondAnswerLabel.text &&
//                            element.thirdAnswer == thirdAnswerLabel.text &&
//                            element.fourthAnswer == fourthAnswerLabel.text &&
//                            element.trueAnswer == trueAnswerLabel.text{
//                            c += 1
//                            
//                        }
//                        
//                    }
                 //   if c == 0{
                    
                        Constants.arrayOfMistakes.append(QuestionAndAnswer(question: questionLabel.text!, firstAnswer: firstAnswerLabel.text!, secondAnswer: secondAnswerLabel.text!, thirdAnswer: thirdAnswerLabel.text!, fourthAnswer: fourthAnswerLabel.text!, trueAnswer: trueAnswerLabel.text!) )
                    
                        //                             SaveManager.shared.arrayOfMistakes.append(QuestionAndAnswer(question: questionLabel.text!, firstAnswer: firstAnswerLabel.text!, secondAnswer: secondAnswerLabel.text!, thirdAnswer: thirdAnswerLabel.text!, fourthAnswer: fourthAnswerLabel.text!, trueAnswer: trueAnswerLabel.text!) )
                        //
                        //                            SaveManager.shared.setMistakeArray(array: SaveManager.shared.arrayOfMistakes)
                   // }
                    
                    arrayOfAnswerLabel[i].backgroundColor = UIColor.red
                    arrayOfRedLabel[numberQuestion] = i
                    arrayOfLabel[numberQuestion].backgroundColor = UIColor.red
                    for element in arrayOfAnswerLabel{
                        if element.text == trueAnswerLabel.text{
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
        if j == 0 + Constants.countTrueAnswer {
            endTestButton.isHidden = false
        }
    }
    
    
    
    @IBAction func previousQuestionSwipe(_ sender: UISwipeGestureRecognizer) {
        printPreviousQuestion()
    }
    
    @IBAction func nextQuestionSwipe(_ sender: UISwipeGestureRecognizer) {
        printNextQuestion()
    }
    
    @IBAction func previousQuestionButton(_ sender: UIButton) {
        printPreviousQuestion()
    }
    
    @IBAction func nextQuestionButton(_ sender: UIButton) {
        printNextQuestion()
    }
    
}



private extension HtmlTestController{
    
    func shuffleAnswerInArray() {
        var array : [String] = []
        for element in Constants.mainArray{
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
        questionLabel.text = Constants.mainArray[numberQuestion].question
        firstAnswerLabel.text = Constants.mainArray[numberQuestion].firstAnswer
        secondAnswerLabel.text = Constants.mainArray[numberQuestion].secondAnswer
        thirdAnswerLabel.text = Constants.mainArray[numberQuestion].thirdAnswer
        fourthAnswerLabel.text = Constants.mainArray[numberQuestion].fourthAnswer
        trueAnswerLabel.text = Constants.mainArray[numberQuestion].trueAnswer
    }
   
    func printNextQuestion(){
        numberQuestion += 1
        if numberQuestion == Constants.mainArray.count{
            numberQuestion = 0
        }
        clearLabelQuestionColor()
        printArray()
        colorYellowForLabel()
        borderLabel()
    }
    
    func printPreviousQuestion(){
        numberQuestion -= 1
        if numberQuestion == -1{
            numberQuestion = Constants.mainArray.endIndex - 1
        }
        clearLabelQuestionColor()
        printArray()
        colorYellowForLabel()
        borderLabel()
    }
    
    func clearLabelQuestionColor() {
        for element in arrayOfAnswerLabel{
            element.backgroundColor = UIColor.clear
        }
    }
    
    func colorYellowForLabel(){
        
        if arrayOfGreenLabel[numberQuestion] != 5 {
            arrayOfAnswerLabel[arrayOfGreenLabel[numberQuestion]].backgroundColor = UIColor.green
        } else if arrayOfRedLabel[numberQuestion] != 5{
            arrayOfAnswerLabel[arrayOfRedLabel[numberQuestion]].backgroundColor = UIColor.red
            for element in arrayOfAnswerLabel{
                if element.text == trueAnswerLabel.text{
                    element.backgroundColor = UIColor.green
                }
            }
        
        }
    }
    

    func borderLabel(){
        for element in arrayOfLabel{
            element.layer.borderWidth = 0.5
            element.layer.borderColor = UIColor.black.cgColor
        }
        arrayOfLabel[numberQuestion].layer.borderWidth = 2
        arrayOfLabel[numberQuestion].layer.borderColor = UIColor.black.cgColor
    }
    
    @objc func timerAction() {
        counterSec += 1
        if counterSec == 60{
            counterSec = 0
            counterMin += 1
        }
        if counterSec < 10{
            timeLabel.text = String(counterMin) + ":0" + String(counterSec)
        }else{
        timeLabel.text = String(counterMin) + ":" + String(counterSec)
        }
    }
    
}



@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
