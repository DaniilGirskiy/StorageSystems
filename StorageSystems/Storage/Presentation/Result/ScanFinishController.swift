//
//  ScanFinishController.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

protocol ScanFinishControllerInput {
    var output: ScanFinishControllerOutput? { get set }
}

protocol ScanFinishControllerOutput {
    func completeFlow()
}

class ScanFinishController: UIViewController, ScanFinishControllerInput {
    var output: ScanFinishControllerOutput?
    
    @IBOutlet weak var scannedCodeLabel: UILabel!
    
    @IBAction func send() {
        output?.completeFlow()
    }
    
    
}
