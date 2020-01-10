//
//  ProductTitleController.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

protocol ProductTitleControllerInput {
    var output: ProductTitleControllerOutput? { get set }
}

protocol ProductTitleControllerOutput {
    func getTitle(_ title: String)
}

class ProductTitleController: UIViewController, ProductTitleControllerInput {
    var output: ProductTitleControllerOutput?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBAction func next() {
        output?.getTitle(titleTextField.text!)
    }
}


