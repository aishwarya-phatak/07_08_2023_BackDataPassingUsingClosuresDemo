//
//  SecondViewController.swift
//  07_08_2023_BackDataPassingUsingClosuresDemo
//
//  Created by Vishal Jagtap on 27/09/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var lasnameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    var backDataPassing : ((String, String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
        guard let passDataBack = backDataPassing
            else {
                return
            }
        
        let extractedUsername = self.usernameTextField.text
        let extractedLastname = self.lasnameTextField.text
        let extractedCity = self.cityTextField.text
        
        passDataBack(
            extractedUsername!,
            extractedLastname!,
            extractedCity!)
        
        self.navigationController?.popViewController(animated: true)
    }
}
