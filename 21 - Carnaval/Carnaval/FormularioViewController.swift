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
    
    @IBAction func definirQuantidade(_ sender: Any) {
        self.lbQuantidade.text = String(Int(self.stQuantidade.value))
    }
    
    @IBAction func salvar(_ sender: Any) {
        let nome = self.tfNome.text
        let valor = Float(self.tfValor.text!)
        let qtde = Int(self.stQuantidade.value)
        let bloco = Bloco(nome: nome!, valor: valor!, qtde: qtde)
        
        print("\(bloco)")
        
        self.navigationController?.popViewController(animated: true)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
