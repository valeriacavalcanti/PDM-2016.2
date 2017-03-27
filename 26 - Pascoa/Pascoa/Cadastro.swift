//
//  Cadastro.swift
//  Pascoa
//
//  Created by admin on 24/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Cadastro: NSObject, NSCoding {
    var lista: Array<Sugestao>!
    
    override init() {
        self.lista = Array<Sugestao>()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.lista = aDecoder.decodeObject(forKey: "lista") as! Array<Sugestao>
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.lista, forKey: "lista")
    }
    
    func add(sugestao: Sugestao) {
        self.lista.append(sugestao)
    }
    
    func quantidade() -> Int {
        return self.lista.count
    }
    
    func del(pos: Int) {
        self.lista.remove(at: pos)
    }
    
    func troca(origem: Int, destino: Int) {
        let aux = self.lista[origem]
        self.lista[origem] = self.lista[destino]
        self.lista[destino] = aux;
    }
}
