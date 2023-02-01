//
//  ViewController.swift
//  IntroduceSelf
//
//  Created by Vansh on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var introduceSelfButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_sender:UIStepper){
        numberOfPetsLabel.text = "\(_sender.value)"
    }
        
    @IBAction func introduceSelfDidTapped(_sender:UIButton){
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
            
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attended \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
            
            
        let alertController = UIAlertController(title: "My introduction", message: introduction, preferredStyle: .alert)
            
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
            
        alertController.addAction(action)
            
        present(alertController, animated: true, completion: nil)
        }
    
    

}

