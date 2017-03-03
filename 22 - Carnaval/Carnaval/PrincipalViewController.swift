//
//  ViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {
    @IBOutlet weak var lbQuantidade: UILabel!
    var cadastro = Cadastro()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("view did load - Principal")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //print("view will appear - Principal")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("view did appear - Principal")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        //print("view will disappear - Principal")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        //print("view did disappear - Principal")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("Segue: \(segue.identifier)")

        if (segue.identifier == "principal_sobre"){
            let sobreVC = segue.destination as! SobreViewController
            //sobreVC.stSobre = "que bom!"
            sobreVC.cadastro = self.cadastro
        }else if (segue.identifier == "principal_formulario"){
            let formularioVC = segue.destination as! FormularioViewController
            formularioVC.cadastro = self.cadastro
        }
    }
}

