//
//  ViewController.swift
//  Cadastro de Pessoas
//
//  Created by adm/Users/admin/Documents/PDM/Cadastro de Pessoas/Cadastro de Pessoas/ViewController.swiftin on 02/02/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nome: UITextField!;

    @IBOutlet weak var idade: UITextField!
    
    @IBOutlet weak var auxNome: UITextField!
   
    @IBAction func salvar() {
        auxNome.setValue(null, nome.text!);
    }
    
}

