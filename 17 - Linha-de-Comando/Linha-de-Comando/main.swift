//
//  main.swift
//  Linha-de-Comando
//
//  Created by admin on 06/02/17.
//  Copyright © 2017 IFPB. All rights reserved.
//

import Foundation

class Pessoa: CustomStringConvertible {
    var nome:String!
    var idade:Int!
    
    var description: String {
        //return self.nome + " - " + String(self.idade)
        return "\(self.nome) - \(self.idade)"
    }
    
    init(nome:String, idade:Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func dobro() -> Int {
        return self.idade * 2
    }
}

class PessoaFisica: Pessoa {
    var cpf:String!
    override var description: String{
        return "\(self.nome) - \(self.idade) - \(self.cpf)"
    }
    
    init(nome:String, idade:Int, cpf:String) {
        super.init(nome: nome, idade: idade)
        self.cpf = cpf
    }
    
    override func dobro() -> Int {
        return super.dobro() * 2
    }
}

var p1 = Pessoa(nome: "valeria", idade: 15)

var pf1 = PessoaFisica(nome: "valeria pessoa fisica", idade: 16, cpf:"123456")

/*

print(p1.nome)
print(p1.dobro())
print(p1)

print(pf1.nome)
print(pf1.dobro())
print(pf1)
 
print(pf1.dobro())
print(pf1)
 
 */

var lista = [p1, p1, pf1, pf1]

for p in lista {
    print(p)
}

print("---- OUTRO FOR ----")

lista.append(p1)
lista.append(pf1)

for p in lista {
    print(p)
}

print("---- OUTRO FOR ----")

for p in 0 ..< lista.count {
    print(lista[p])
}

for p in 0 ... lista.count {
    print(p)
}

print("---- WHILE ----")

var i = 0
while (i < lista.count){
    print(lista[i])
    i += 1
}


print("---- REPEAT ----")

var j = 0

repeat{
    print(lista[j])
    j += 1
}while(j < lista.count)
