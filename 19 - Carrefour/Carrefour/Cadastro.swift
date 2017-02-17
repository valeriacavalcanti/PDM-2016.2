//
//  Cadastro.swift
//  Carrefour
//
//  Created by admin on 17/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Cadastro: NSObject{
    var lista: Array<Pessoa>!
    
    override init() {
        self.lista = Array<Pessoa>()
    }
    
    func add(p:Pessoa){
        self.lista.append(p)
    }
    
    func quantidade() -> Int{
        return self.lista.count
    }
}
