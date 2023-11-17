//
//  CadastrarViewController.swift
//  listagem-de-jogos
//
//  Created by IFB-BIOTIC-07 on 01/11/23.
//

import UIKit

class CadastrarViewController: UIViewController {
    
    @IBOutlet weak var nomeCadastro: UITextField!
    @IBOutlet weak var anoCadastro: UITextField!
    @IBOutlet weak var generoCadastro: UITextField!
    @IBOutlet weak var jogoTrue: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cadastrarJogoPressed(_ sender: UIButton) {
        let cadastrarJogo = Jogo(nome: nomeCadastro.text!, ano: Int(anoCadastro.text!)!, jogoDoAno: jogoTrue.isOn, genero: generoCadastro.text!)
        
        Lista.listaJogos.append(cadastrarJogo)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
