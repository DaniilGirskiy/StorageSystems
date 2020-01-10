//
//  ScanStartController.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

protocol ScanStartControllerInput {
    var output: ScanStartControllerOutput? { get set }
}

protocol ScanStartControllerOutput {
    func getProductQRCode(_ qr: String)
}

class ScanStartController: UIViewController, ScanStartControllerInput {
    var output: ScanStartControllerOutput?
    
    @IBOutlet weak var qrCodeTextField: UITextField!
    @IBAction func next() {
        output?.getProductQRCode(qrCodeTextField.text!)
    }
    
}
