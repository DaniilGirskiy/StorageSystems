//
//  ProductPriceController.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

protocol ProductPriceControllerInput {
    var output: ProductPriceControllerOutput? { get set }
}

protocol ProductPriceControllerOutput {
    func getPrice(_ price: String)
}

class ProductPriceController: UIViewController, ProductPriceControllerInput {
    var output: ProductPriceControllerOutput?
    
    @IBOutlet weak var priceTextField: UITextField!
    @IBAction func next() {
        output?.getPrice(priceTextField.text!)     // в какой момент времени нужно проверить, что у price тип Float?
    }
    
}
