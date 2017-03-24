//
//  ListarTableViewController.swift
//  Pascoa
//
//  Created by admin on 24/03/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ListarTableViewController: UITableViewController {
    var cadastro: Cadastro!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appdel = UIApplication.shared.delegate as! AppDelegate
        self.cadastro = appdel.cadastro
        
        self.navigationItem.leftBarButtonItem   = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cadastro.quantidade()
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        let sugestao = self.cadastro.lista[indexPath.row]
        cell.textLabel?.text = sugestao.description

        return cell
    }


    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.cadastro.del(pos: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        self.cadastro.troca(origem: fromIndexPath.row, destino: to.row)
    }


    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
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
        }else if (segue.identifier == "principal_sobre"){
            let svc = segue.destination as! SobreViewController
            svc.cadastro = self.cadastro
        }
    }

}
