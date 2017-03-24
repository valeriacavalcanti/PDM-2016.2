//
//  Sugestao.swift
//  Pascoa
//
//  Created by admin on 24/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Sugestao: NSObject, NSCoding{
    var nome: String!
    var chocolate: String!
    var data: Date!
    
    override var description: String{
        return self.nome
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.nome = aDecoder.decodeObject(forKey: "nome") as! String
        self.chocolate = aDecoder.decodeObject(forKey: "chocolate") as! String
        self.data = aDecoder.decodeObject(forKey: "data") as! Date
    }
    
    init(nome:String, chocolate:String, data: Date) {
        self.nome = nome
        self.chocolate = chocolate
        self.data = data
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.nome, forKey: "nome")
        aCoder.encode(self.chocolate, forKey: "chocolate")
        aCoder.encode(self.data, forKey: "data")
    }
}
