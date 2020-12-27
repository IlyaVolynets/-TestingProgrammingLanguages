//
//  AboutDeveloper.swift
//  Diplom
//
//  Created by Ilya Volynets on 6/10/19.
//  Copyright © 2019 Ilya Volynets. All rights reserved.
//

import MessageUI
import UIKit
import Foundation

class AboutDeveloper: UIViewController  {
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func pushEmail(_ sender: UIButton) {
        if MFMailComposeViewController.canSendMail(){
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["valynets.ilya4@gmail.com"])
            mail.setSubject("")
            mail.setMessageBody("", isHTML: true)
            self.present(mail, animated: true, completion: nil)
        }
    }
    
    @IBAction func callPhone(_ sender: UIButton) {
        guard let url = URL(string: "tel://+375293068151") else {
            return
        }
        if UIApplication.shared.canOpenURL(url){
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func pushInstagram(_ sender: UIButton) {
        let appURLInst = URL(string: "https://www.instagram.com/ilya_io_oi/")!
        let safariURLInst = URL(string: "instagram.com/ilya_io_oi/")!
        
        if UIApplication.shared.openURL(appURLInst){
            UIApplication.shared.openURL(safariURLInst)
        }

    }
    @IBAction func pushVK(_ sender: UIButton) {
        let appURLVK = URL(string: "vk://vk.com/ilya_lo_ol")!
        let safariURLVK = URL(string: "vk.com/ilya_lo_ol")!
        
        if UIApplication.shared.openURL(appURLVK){
            UIApplication.shared.openURL(safariURLVK)
    }
    }
}

extension AboutDeveloper : MFMailComposeViewControllerDelegate {

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
