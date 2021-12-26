//
//  ViewController.swift
//  Bootcamp
//
//  Created by A101Mac on 25.12.2021.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet var mailSentText: UILabel!
    @IBOutlet var emailTxtField: UITextField!

    @IBAction func oncelikSwitch(_ sender: Any) {
        switchEnabled.toggle()
    }
    
    @IBOutlet var descMulti: UITextView!
    var email: String = ""
    var description2: String = ""
    var switchEnabled: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendMessageBtn(_ sender: Any) {
        if let emailGecici = emailTxtField.text {
            if let desc = descMulti.text {
                email = emailGecici
                
                description2 = desc
                
                if !email.contains("@") {
                    mailSentText.text = "Lütfen dogru bir eposta adresi giriniz"
                }
                else {
                    let email2 = email.replacingOccurrences(of: ",", with: "\nTo:")
                    
                    if description2 == "" {
                        mailSentText.text = "Lütfen içerik giriniz"
                    }
                    else {
                        mailSentText.textColor = switchEnabled ? .red : .black
                       
                        mailSentText.text = "To: \(email2) \nMessage : \(description2)"
                    }
                }
            }
            else {
                descMulti.text = "Lütfen içerik giriniz"
            }
        }
        else {
            mailSentText.text = "Lütfen email alanını doldurunuz"
        }
    }
}
