//
//  SobreViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController {
    @IBOutlet weak var lbQuantidade: UILabel!
    
    //var stSobre:String!
    var cadastro:Cadastro!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("view did load - Sobre")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //print("view will appear - Sobre")
        self.lbQuantidade.text = String(self.cadastro.quantidade())
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("view did appear - Sobre")
        //self.lbQuantidade.text = self.stSobre
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        //print("view will disappear - Sobre")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        //print("view did disappear - Sobre")
    }
}
