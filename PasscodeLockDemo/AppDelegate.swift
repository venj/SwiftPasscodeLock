//
//  AppDelegate.swift
//  PasscodeLockDemo
//
//  Created by Yanko Dimitrov on 8/29/15.
//  Copyright © 2015 Yanko Dimitrov. All rights reserved.
//

import UIKit
import PasscodeLock

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    lazy var passcodeLockPresenter: PasscodeLockPresenter = {
        
        let configuration = PasscodeLockConfiguration()
        let presenter = CustomPasscodeLockPresenter(mainWindow: self.window, configuration: configuration)
        
        return presenter
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        let _ = passcodeLockPresenter
        return true
    }

}
