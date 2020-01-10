//
//  ProductIDController.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

protocol ProductIDControllerInput {
    var output: ProductIDControllerOutput? { get set }
}

protocol ProductIDControllerOutput {
    func getID(_ id: String)
}

class ProductIDController: UIViewController, ProductIDControllerInput {
    var output: ProductIDControllerOutput?
    
    @IBOutlet weak var idTextField: UITextField!
    @IBAction func next() {
        output?.getID(idTextField.text!)
    }
    
}
