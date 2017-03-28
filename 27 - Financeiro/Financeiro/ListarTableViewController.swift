//
//  ListarTableViewController.swift
//  Financeiro
//
//  Created by admin on 28/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ListarTableViewController: UITableViewController {
    
    var cadastro: Cadastro!
    

    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        let ad = UIApplication.shared.delegate as! AppDelegate
        self.cadastro = ad.cadastro
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cadastro.gastos.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        cell.textLabel?.text = self.cadastro.gastos[indexPath.row].descricao

        return cell
    }


    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

 
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.cadastro.gastos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let aux = self.cadastro.gastos[fromIndexPath.row]
        self.cadastro.gastos[fromIndexPath.row] = self.cadastro.gastos[to.row]
        self.cadastro.gastos[to.row] = aux
    }


    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let fvc = sb.instantiateViewController(withIdentifier: "formulario") as! FormularioViewController
        fvc.gasto = self.cadastro.gastos[indexPath.row]
        self.navigationController?.pushViewController(fvc, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tableView.reloadData()
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "principal_formulario"){
            let fvc = segue.destination as! FormularioViewController
            fvc.cadastro = self.cadastro
        }
    }

}
