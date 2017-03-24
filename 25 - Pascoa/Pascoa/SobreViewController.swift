//
//  SobreViewController.swift
//  Pascoa
//
//  Created by admin on 24/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController {

    @IBOutlet weak var lbQuantidade: UILabel!
    
    var cadastro: Cadastro!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.lbQuantidade.text = String(self.cadastro.quantidade())
    }

}
