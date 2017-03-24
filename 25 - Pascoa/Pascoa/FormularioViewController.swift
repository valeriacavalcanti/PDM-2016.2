//
//  ViewController.swift
//  Pascoa
//
//  Created by admin on 24/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfChocolate: UITextField!
    @IBOutlet weak var dpData: UIDatePicker!
    
    var cadastro: Cadastro!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.save, target: self, action: #selector(salvar))
    }
    
    func salvar() {
        let nome = self.tfNome.text
        let chocolate = self.tfChocolate.text
        let data = self.dpData.date
        
        let sugestao = Sugestao(nome: nome!, chocolate: chocolate!, data: data)
        
        self.cadastro.add(sugestao: sugestao)
        
        self.navigationController?.popViewController(animated: true)
    }

}

