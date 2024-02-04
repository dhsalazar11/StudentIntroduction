//
//  ViewController.swift
//  StudentIntroduction
//
//  Created by Daniel Salazar on 2/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var schoolYearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var petCountLabel: UILabel!
    @IBOutlet weak var petCountStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        schoolYearSegmentedControl.selectedSegmentTintColor = .systemBlue
        petCountStepper.layer.cornerRadius = 5
        petCountStepper.backgroundColor = .systemBlue
        morePetsSwitch.onTintColor = .systemBlue
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petCountLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introductionButtonSelected(_ sender: UIButton) {
        let year = schoolYearSegmentedControl.titleForSegment(at: schoolYearSegmentedControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!.lowercased()) year and I own \(petCountLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        print(introduction)
    }
}

