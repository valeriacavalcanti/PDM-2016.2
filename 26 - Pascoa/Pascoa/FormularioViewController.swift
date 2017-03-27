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
    var sugestao: Sugestao!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.save, target: self, action: #selector(salvar))
    }
    
    func salvar() {
        let nome = self.tfNome.text
        let chocolate = self.tfChocolate.text
        let data = self.dpData.date
        
        // sugestão existe, atualiza as informações da view com a do objeto
        if (self.sugestao != nil){
            self.sugestao.nome = self.tfNome.text
            self.sugestao.chocolate = self.tfChocolate.text
            self.sugestao.data = self.dpData.date
        }else{
            // sugestão não existe, gera uma nova
            let sugestao = Sugestao(nome: nome!, chocolate: chocolate!, data: data)
            self.cadastro.add(sugestao: sugestao)
        }
        
        self.navigationController?.popViewController(animated: true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if (self.sugestao != nil)
        {
            self.tfNome.text = self.sugestao.nome
            self.tfChocolate.text = self.sugestao.chocolate
            self.dpData.date = self.sugestao.data
        }
        
    }
}

