//
//  ViewController.swift
//  MyFirstProjectFromEasyUM
//
//  Created by Timur Khamzin on 30.10.2019.
//  Copyright © 2019 Timur Khamzin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: UIButton){
        //Задание , приплюсовать значения textfield1 + textField2
        
        
        self.label.text = "\((Double(textField.text!)!) + (Double(secondTextField.text!)!))"
        
        
    }
    

}

