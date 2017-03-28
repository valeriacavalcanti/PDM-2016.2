//
//  SobreViewController.swift
//  Financeiro
//
//  Created by admin on 28/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController {

    @IBOutlet weak var lbQuantidade: UILabel!
    var cadastro: Cadastro!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let ad = UIApplication.shared.delegate as! AppDelegate
        self.cadastro = ad.cadastro
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.lbQuantidade.text = String(self.cadastro.gastos.count)
    }
}
