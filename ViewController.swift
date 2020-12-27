//
//  ViewController.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/14/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstProgressView: UIProgressView!
    @IBOutlet weak var secondProgressView: UIProgressView!
    @IBOutlet weak var thirdProgressView: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var razdelLabel: UILabel!
    var countRazdel = 0
    var countTrueAnswer = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        var transform : CGAffineTransform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        firstProgressView.transform = transform
        secondProgressView.transform = transform
        thirdProgressView.transform = transform
        Constants.saveArray = SaveManager.shared.getLogin()
        firstProgressView.progress = (0.0125 * Float(Constants.saveArray[0])!) + (0.0125 * Float(Constants.saveArray[2])!) + (0.0125 * Float(Constants.saveArray[4])!) + (0.0125 * Float(Constants.saveArray[6])!) + (0.0125 * Float(Constants.saveArray[8])!) + (0.0125 * Float(Constants.saveArray[10])!) + (0.0125 * Float(Constants.saveArray[12])!) + (0.0125 * Float(Constants.saveArray[14])!)
        
        countTrueAnswer = Int(Constants.saveArray[0])! + Int(Constants.saveArray[2])! + Int(Constants.saveArray[4])! + Int(Constants.saveArray[6])! + Int(Constants.saveArray[8])! + Int(Constants.saveArray[10])! + Int(Constants.saveArray[12])! + Int(Constants.saveArray[14])!
        questionLabel.text = String(countTrueAnswer) + "/80"
        
        if Constants.saveArray[0] == "10" && Constants.saveArray[2] == "10" && Constants.saveArray[4] == "10" && Constants.saveArray[6] == "10"{
            secondProgressView.progress = 0.5
            languageLabel.text = "1/2"
        }
        if Constants.saveArray[8] == "10" && Constants.saveArray[10] == "10" && Constants.saveArray[12] == "10" && Constants.saveArray[14] == "10"{
            secondProgressView.progress = 0.5
            languageLabel.text = "1/2"
        }
        
        if Constants.saveArray[0] == "10" && Constants.saveArray[2] == "10" && Constants.saveArray[4] == "10" && Constants.saveArray[6] == "10" && Constants.saveArray[8] == "10" && Constants.saveArray[10] == "10" && Constants.saveArray[12] == "10" && Constants.saveArray[14] == "10"{
            secondProgressView.progress = 1
            languageLabel.text = "2/2"
        }
        
        countRz(i: 0)
        countRz(i: 2)
        countRz(i: 4)
        countRz(i: 6)
        countRz(i: 8)
        countRz(i: 10)
        countRz(i: 12)
        countRz(i: 14)
        
        razdelLabel.text = String(countRazdel) + "/8"
        thirdProgressView.progress = 0.125 * Float(countRazdel)
        
        if Constants.saveArray[16] == "0" && razdelLabel.text == "8/8" && languageLabel.text == "2/2" && questionLabel.text == "80/80"{
        let alert = UIAlertController(title: "Поздравляю!", message: "Вы прошли весь курс тестирования и ответили на все вопросы правильно", preferredStyle: .alert)
            DispatchQueue.main.async {
        alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
            }
        Constants.saveArray[16] = "1"
            SaveManager.shared.setLogin(array: Constants.saveArray)
        }
    }

    @IBAction func openJSTest(_ sender: UIButton) {
        Constants.firstArray = Constants.arrayOfJSQuestionsOne
        Constants.secondArray = Constants.arrayOfJSQuestionsTwo
        Constants.thirdArray = Constants.arrayOfJSQuestionsThree
        Constants.fourthArray = Constants.arrayOfJSQuestionsFour
        Constants.iTest = true
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "mainHtmlController")
        self.present(controller, animated: true, completion: nil)
    }
    @IBAction func openPHPTest(_ sender: UIButton) {
        Constants.firstArray = Constants.arrayOfPHPQuestionsOne
        Constants.secondArray = Constants.arrayOfPHPQuestionsTwo
        Constants.thirdArray = Constants.arrayOfPHPQuestionsThree
        Constants.fourthArray = Constants.arrayOfPHPQuestionsFour
        Constants.iTest = false
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "mainHtmlController")
        self.present(controller, animated: true, completion: nil)
    }
    @IBAction func openMistakesTest(_ sender: UIButton) {
        if Constants.arrayOfMistakes.count != 0 {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "mistakesTest")
        self.present(controller, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Ошибок нет!", message: "Раздел \"Ошибки\" на данный момент не содержит вопросов", preferredStyle: .alert)
            DispatchQueue.main.async {
                alert.addAction(UIAlertAction(title: "Ок", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
        }
        }
    }
    
    func countRz(i : Int){
        if Constants.saveArray[i] == "10"{
            countRazdel += 1
        }
    }
}

