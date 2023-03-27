//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Sarper Bal on 27.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextfİELD: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName =  storedName as? String {
            nameLabel.text = myName
        }
        if let myBirthday =  storedBirthday as? String {
            birthdayLabel.text = myBirthday
        }


    }

    @IBAction func savelClick(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextfİELD.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")

        
        nameLabel.text = nameTextfİELD.text
        birthdayLabel.text = birthdayTextField.text
    }
    
    @IBAction func deleteClick(_ sender: Any) {
        let storedNmae = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedNmae as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "name:"
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = ""

        }
    }
}

