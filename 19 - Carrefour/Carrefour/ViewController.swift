//
//  ViewController.swift
//  Carrefour
//
//  Created by admin on 17/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfIdade: UITextField!
    @IBOutlet weak var lbContador: UILabel!
    
    var cadastro = Cadastro()
    
    
    @IBAction func salvar(_ sender: Any) {
        print("\(self.tfNome.text) - \(self.tfIdade.text)")
        let p = Pessoa(nome: self.tfNome.text!, idade: Int(self.tfIdade.text!)!)
        
        self.cadastro.add(p: p)
        self.lbContador.text = String(self.cadastro.quantidade())
        
        self.tfNome.text = ""
        self.tfIdade.text = ""
    }
    
    @IBAction func limpar(_ sender: Any) {
        self.tfNome.text = ""
        self.tfIdade.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

