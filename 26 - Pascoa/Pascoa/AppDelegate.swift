//
//  AppDelegate.swift
//  Pascoa
//
//  Created by admin on 24/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var cadastro: Cadastro!
    
    
    func arquivo() -> String {
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0] + "/sugestoes"
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        print("\(self.arquivo())")
        
        let obj = NSKeyedUnarchiver.unarchiveObject(withFile: self.arquivo())
        if (obj != nil){
            self.cadastro = obj as! Cadastro
        }else{
            self.cadastro = Cadastro()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
        
        // gravar no arquivo
        NSKeyedArchiver.archiveRootObject(self.cadastro, toFile: self.arquivo())
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
    }


}

