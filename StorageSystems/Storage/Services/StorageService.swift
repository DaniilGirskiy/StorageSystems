//
//  StorageService.swift
//  StorageSystems
//
//  Created by Danya on 10/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import Foundation

protocol StorageService {
    func uploadProductInformationToStorage(info: ProductInformation)
}

class StorageServiceImpl: StorageService {
    func uploadProductInformationToStorage(info: ProductInformation) {
        print("загрузка данных о товаре")
    }
}
