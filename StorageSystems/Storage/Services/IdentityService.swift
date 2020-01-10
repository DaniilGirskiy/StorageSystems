//
//  IdentityService.swift
//  StorageSystems
//
//  Created by Danya on 09/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import Foundation

enum Service {
    case enterProductInformation
    case scanProduct
}

protocol IdentityService {
    func chooseService() -> Service?
}

class IdentityServiceImpl: IdentityService {
    func chooseService() -> Service? {
        //return .enterProductInformation
        return .scanProduct
    }
}
