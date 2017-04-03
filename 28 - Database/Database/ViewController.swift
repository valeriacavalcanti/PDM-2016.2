//
//  ViewController.swift
//  Database
//
//  Created by admin on 03/04/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfIdade: UITextField!
    
    
    @IBAction func salvar(_ sender: Any) {
        let ad = UIApplication.shared.delegate as! AppDelegate
        let context = ad.persistentContainer.viewContext
        let pessoa = NSEntityDescription.insertNewObject(forEntityName: "Pessoa", into: context)
        
        pessoa.setValue(self.tfNome.text, forKey: "nome")
        pessoa.setValue(Int(self.tfIdade.text!), forKey: "idade")
        
        do{
            try context.save()
            print("Deu certo")
        }catch{
            print("Deu errado")
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Pessoa")
        request.returnsObjectsAsFaults = false

        do{
            let result = try context.fetch(request)
            if (result.count > 0){
                for r in result as! [NSManagedObject]{
                    let nome = r.value(forKey: "nome")
                    let idade = r.value(forKey: "idade") as! Int
                    print("\(nome) \(idade)")
                }
            }
        }catch{
            print("erro")
        }
    }

}

