//
//  ViewController.swift
//  07_08_2023_BackDataPassingUsingClosuresDemo
//
//  Created by Vishal Jagtap on 27/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var secondViewController : SecondViewController?
    
    private let secondViewControllerIdentifier : String = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBAction func btnMoveToFirstVC(_ sender: Any) {
        
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: secondViewControllerIdentifier) as? SecondViewController
        
        secondViewController?.backDataPassing = {
            (username, lastname, city) in
            self.usernameLabel.text = username
            self.lastnameLabel.text = lastname
            self.cityLabel.text = city
        }
        
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }

}
