//
//  MenuViewController.swift
//  listagem-de-jogos
//
//  Created by IFB-BIOTIC-07 on 01/11/23.
//

import Foundation
class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func listaPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tela2", sender: self)
    }
    @IBAction func cadGetPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "tela3", sender: self)
    }
