//
//  HtmlController.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/14/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import Foundation
import UIKit

class HtmlController: UIViewController  {
    
    @IBOutlet weak var firstAnswerLabel: UILabel!
    
    @IBOutlet weak var firstTimeLabel: UILabel!
    
    @IBOutlet weak var secondAnswerLabel: UILabel!
    
    @IBOutlet weak var secondTimeLabel: UILabel!
    
    @IBOutlet weak var thirdAnswerLabel: UILabel!
    
    @IBOutlet weak var thirdTimeLabel: UILabel!
    
    @IBOutlet weak var fourthAnswerLabel: UILabel!
    
    @IBOutlet weak var fourthTimeLabel: UILabel!
    
    @IBOutlet weak var aboutFirstTestLabel: UILabel!
    
    @IBOutlet weak var aboutSecondTestLabel: UILabel!
    
    @IBOutlet weak var aboutThirdTestLabel: UILabel!
    
    @IBOutlet weak var aboutFourthTestLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printResult()
    }
    
//    @IBAction func fffffffff(_ sender: UIButton) {
//        Constants.mainArray = Constants.arrayOfMistakes
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "QuestionController")
//        self.present(controller, animated: true, completion: nil)
//    }
    

    @IBAction func showFirstTest(_ sender: UITapGestureRecognizer) {
        firstAnswerLabel.text = ""
        firstTimeLabel.text = ""
        firstAnswerLabel.backgroundColor = UIColor.lightGray
        firstTimeLabel.backgroundColor = UIColor.lightGray
        if Constants.iTest{
            Constants.iA = 0
            Constants.iT = 1
            Constants.resultOfTest = "Введение в JavaScript,основные команды,переменные,строки"
        }else{
            Constants.iA = 8
            Constants.iT = 9
            Constants.resultOfTest = "Введение в PHP, основы"
        }
        Constants.mainArray = Constants.firstArray
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "QuestionController")
        self.present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func showSecondTest(_ sender: UITapGestureRecognizer) {
        secondAnswerLabel.text = ""
        secondTimeLabel.text = ""
        secondAnswerLabel.backgroundColor = UIColor.lightGray
        secondTimeLabel.backgroundColor = UIColor.lightGray
        if Constants.iTest{
            Constants.iA = 2
            Constants.iT = 3
            Constants.resultOfTest = "Типы данных,взаимодействие с пользователем: promt,confim,alert"
        }else{
            Constants.iA = 10
            Constants.iT = 11
            Constants.resultOfTest = "Основные операции в PHP, массивы"
        }
        Constants.mainArray = Constants.secondArray
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "QuestionController")
        self.present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func showThirdTest(_ sender: UITapGestureRecognizer) {
        thirdAnswerLabel.text = ""
        thirdTimeLabel.text = ""
        thirdAnswerLabel.backgroundColor = UIColor.lightGray
        thirdTimeLabel.backgroundColor = UIColor.lightGray
        if Constants.iTest{
            Constants.iA = 4
            Constants.iT = 5
            Constants.resultOfTest = "Основные,логические и условные операторы"
        }else{
            Constants.iA = 12
            Constants.iT = 13
            Constants.resultOfTest = "Все о циклах и условных операторах"
        }
        Constants.mainArray = Constants.thirdArray
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "QuestionController")
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func showFourthTest(_ sender: UITapGestureRecognizer) {
        fourthAnswerLabel.text = ""
        fourthTimeLabel.text = ""
        fourthAnswerLabel.backgroundColor = UIColor.lightGray
        fourthTimeLabel.backgroundColor = UIColor.lightGray
        if Constants.iTest{
            Constants.iA = 6
            Constants.iT = 7
            Constants.resultOfTest = "Циклы,функция,конструкция switch"
        }else{
            Constants.iA = 14
            Constants.iT = 15
            Constants.resultOfTest = "Особенности PHP"
        }
        Constants.mainArray = Constants.fourthArray
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "QuestionController")
        self.present(controller, animated: true, completion: nil)
    }
    
    
    
    func printResult() {
        Constants.saveArray = SaveManager.shared.getLogin()
        if Constants.iTest{
             printTitleTest(first: "Введение в JavaScript,основные команды,переменные,строки",
                            second: "Типы данных,взаимодействие с пользователем: promt,confim,alert",
                            third: "Основные,логические и условные операторы",
                            fouth: "Циклы,функция,конструкция switch")
            indexSaveArray(i : 0)
        }else{
            printTitleTest(first: "Введение в PHP, основы",
                           second: "Основные операции в PHP, массивы",
                           third: "Все о циклах и условных операторах",
                           fouth: "Особенности PHP")
            indexSaveArray(i : 8)
        }
        
    }
    
    func printTitleTest(first : String, second: String, third: String, fouth: String){
        aboutFirstTestLabel.text = first
        aboutSecondTestLabel.text = second
        aboutThirdTestLabel.text = third
        aboutFourthTestLabel.text = fouth
    }
    
    func indexSaveArray(i : Int){
        firstAnswerLabel.text = "         Правильных ответов " + Constants.saveArray[i] + "/10"
        firstTimeLabel.text = "         Время прохождения: " + Constants.saveArray[i+1] + " сек."
        secondAnswerLabel.text = "         Правильных ответов " + Constants.saveArray[i+2] + "/10"
        secondTimeLabel.text = "         Время прохождения: " + Constants.saveArray[i+3] + " сек."
        thirdAnswerLabel.text = "         Правильных ответов " + Constants.saveArray[i+4] + "/10"
        thirdTimeLabel.text = "         Время прохождения: " + Constants.saveArray[i+5] + " сек."
        fourthAnswerLabel.text = "         Правильных ответов " + Constants.saveArray[i+6] + "/10"
        fourthTimeLabel.text = "         Время прохождения: " + Constants.saveArray[i+7] + " сек."
    }
    
}
