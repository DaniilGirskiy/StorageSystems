//
//  AppDelegate.swift
//  StorageSystems
//
//  Created by Danya on 08/01/2020.
//  Copyright © 2020 Daniil Girskiy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let coordinator = CoordinatorAssembly().coordinator

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        coordinator.window = window
        coordinator.start()
        coordinator.flowCompleted = {
            print("flow завершен")
        }
        
        
        return true
    }

    


}

