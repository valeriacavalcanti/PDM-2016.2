//
//  ViewController.swift
//  Novo Projeto
//
//  Created by admin on 20/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbVolume: UILabel!
    @IBOutlet weak var slVolume: UISlider!
    @IBOutlet weak var swGostou: UISwitch!
    @IBOutlet weak var lbNota: UILabel!
    @IBOutlet weak var stNota: UIStepper!
    
    @IBAction func volume(_ sender: Any) {
        let valor = Int(self.slVolume.value)
        self.lbVolume.text = String(valor)
    }
    
    @IBAction func nota(_ sender: Any) {
        let valor = Int(self.stNota.value)
        self.lbNota.text = String(valor)
    }
    
    @IBAction func verEscolhidos(_ sender: Any) {
        print("Volume: \(Int(self.slVolume.value))")
        print("Gostou: \(self.swGostou.isOn)")
        print("Nota: \(Int(self.stNota.value))")
    }
    
}

