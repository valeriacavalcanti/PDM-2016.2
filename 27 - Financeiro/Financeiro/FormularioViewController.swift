//
//  ViewController.swift
//  Financeiro
//
//  Created by admin on 28/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {

    @IBOutlet weak var tfDescricao: UITextField!
    @IBOutlet weak var tfValor: UITextField!
    @IBOutlet weak var dpData: UIDatePicker!
    
    var gasto: Gasto!
    
    var cadastro: Cadastro!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.save, target: self, action: #selector(salvar))
    }
    
    func salvar() {
        let desc = self.tfDescricao.text
        let valor = Double(self.tfValor.text!)
        let data = self.dpData.date
        
        if (self.gasto != nil){
            self.gasto.descricao = desc
            self.gasto.valor = valor
            self.gasto.data = data
        }else{
            let gasto = Gasto(descricao: desc!, valor: valor!, data: data)
            
            self.cadastro.gastos.append(gasto)
        }
        
        
        
        self.navigationController?.popViewController(animated: true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if (self.gasto != nil){
            self.tfDescricao.text = self.gasto.descricao
            self.tfValor.text = String(self.gasto.valor)
            self.dpData.date = self.gasto.data
        }
    }
}

