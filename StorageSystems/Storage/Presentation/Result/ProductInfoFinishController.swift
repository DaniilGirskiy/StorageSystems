//
//  ProductInfoFinishController.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

protocol ProductInfoFinishControllerInput {
    var info: ProductInformation? { get set }
    var output: ProductInfoFinishControllerOutput? { get set }
}

protocol ProductInfoFinishControllerOutput {
    func completeFlow()                         // ??
}

class ProductInfoFinishController: UIViewController, ProductInfoFinishControllerInput {
    var storageService: StorageService?        // почему в протокол не занести ??
    var info: ProductInformation?
    var output: ProductInfoFinishControllerOutput?
    
    @IBOutlet weak var infoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let info = info else { return }
        
        infoTextView.text = "\(info.title!)\n\(info.id!)\n\(info.price!)"
        storageService?.uploadProductInformationToStorage(info: info)      // разве не внутри func upload ?
    }
    
    
    @IBAction func upload() {
        output?.completeFlow()
    }
    
}
