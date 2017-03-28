//
//  Cadastro.swift
//  Financeiro
//
//  Created by admin on 28/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Cadastro: NSObject, NSCoding {
    var gastos: Array<Gasto>!
    
    override init(){
        self.gastos = Array<Gasto>()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.gastos = aDecoder.decodeObject(forKey: "gastos") as! Array<Gasto>
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.gastos, forKey: "gastos")
    }
}
