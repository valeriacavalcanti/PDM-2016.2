//
//  Cadastro.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Cadastro: NSObject {
    var lista: Array<Bloco>!
    
    override init(){
        self.lista = Array<Bloco>()
    }
    
    func add(b:Bloco) {
        self.lista.append(b)
    }
    
    func quantidade() -> Int {
        return self.lista.count
    }
}
