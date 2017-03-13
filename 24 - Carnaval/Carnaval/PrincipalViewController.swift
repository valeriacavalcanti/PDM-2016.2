//
//  ViewController.swift
//  Carnaval
//
//  Created by admin on 24/02/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class PrincipalViewController: UITableViewController {
    var cadastro = Cadastro()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("view did load - Principal")
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        //print("view will appear - Principal")
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("view did appear - Principal")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        //print("view will disappear - Principal")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        //print("view did disappear - Principal")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("Segue: \(segue.identifier)")

        if (segue.identifier == "principal_sobre"){
            let sobreVC = segue.destination as! SobreViewController
            //sobreVC.stSobre = "que bom!"
            sobreVC.cadastro = self.cadastro
        }else if (segue.identifier == "principal_formulario"){
            let formularioVC = segue.destination as! FormularioViewController
            formularioVC.cadastro = self.cadastro
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cadastro.quantidade()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)
        
        cell.textLabel?.text = self.cadastro.lista[indexPath.row].nome
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        self.cadastro.lista.remove(at: indexPath.row)
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let aux = self.cadastro.lista[fromIndexPath.row]
        self.cadastro.lista[fromIndexPath.row] = self.cadastro.lista[to.row]
        self.cadastro.lista[to.row] = aux
    }
}

