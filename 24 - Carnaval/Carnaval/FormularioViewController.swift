//
//  FormularioViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfValor: UITextField!
    @IBOutlet weak var lbQuantidade: UILabel!
    @IBOutlet weak var stQuantidade: UIStepper!
    
    //var stFormulario:String!
    var cadastro:Cadastro!
    
    
    @IBAction func definirQuantidade(_ sender: Any) {
        self.lbQuantidade.text = String(Int(self.stQuantidade.value))
    }
    
    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text
        let valor = Float(self.tfValor.text!)
        let qtde = Int(self.stQuantidade.value)
        let bloco = Bloco(nome: nome!, valor: valor!, qtde: qtde)
        print("\(bloco)")
        self.cadastro.add(b: bloco)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("view did load - Formulario")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //print("view will appear - Formulario")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("view did appear - Formulario")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        //print("view will disappear - Formulario")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        //print("view did disappear - Formulario")
    }
}
