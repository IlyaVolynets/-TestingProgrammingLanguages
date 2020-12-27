//
//  EndTestController.swift
//  Diplom
//
//  Created by Ilya Volynets on 5/22/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import MessageUI
import UIKit
import Foundation
class EndTestController: UIViewController  {
 
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        timerLabel.text = "Время прохождения теста: " + String(Constants.timerCountSec + (Constants.timerCountMin * 60) ) + " сек"
        resultLabel.text = "Количество правильных ответов: " + String(Constants.countTrueAnswer) + " из 10"
        loadPhoto(nameFoto: String(Constants.countTrueAnswer))
        
        if Constants.saveArray[Constants.iT] == "--" {
                Constants.saveArray[Constants.iT] = String(Constants.timerCountSec + (Constants.timerCountMin * 60))
        }
        if Int(Constants.saveArray[Constants.iA])! <= Constants.countTrueAnswer{
            Constants.saveArray[Constants.iA] = String(Constants.countTrueAnswer)
          
            Constants.saveArray[Constants.iT] = String(Constants.timerCountSec + (Constants.timerCountMin * 60))
        }
        SaveManager.shared.setLogin(array: Constants.saveArray)
    }
    @IBAction func backButton(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "mainHtmlController")
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func pushResult(_ sender: UIButton) {

        if MFMailComposeViewController.canSendMail(){
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([""])
            mail.setSubject("Название теста - " + Constants.resultOfTest)
            mail.setMessageBody("Результаты теста - \(timerLabel.text!), \(resultLabel.text!)", isHTML: true)
            self.present(mail, animated: true, completion: nil)
        }
        
        }
    
    
    
}

extension EndTestController : MFMailComposeViewControllerDelegate {
    
    func loadPhoto(nameFoto: String) {
        resultImage.image = UIImage(named: nameFoto)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
