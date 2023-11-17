//
//  ViewController.swift
//  listagem-de-jogos
//
//  Created by IFB-BIOTIC-07 on 01/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usuarioTxt: UITextField!
    @IBOutlet weak var senhaTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func iniciarLista() {
        let jogo1 = Jogo(nome: "Gta V", ano: 2013, jogoDoAno: false, genero: "Ação/Aventura")
        let jogo2 = Jogo(nome: "The Last of Us", ano: 2013, jogoDoAno: true, genero: "Ação/Aventura")
        
        
        Lista.listaJogos.append(jogo1)
        Lista.listaJogos.append(jogo2)
        
        
    }
    

    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        
        
        if (usuarioTxt.text == "Guilherme" && senhaTxt.text == "196405") {
            iniciarLista()
            performSegue(withIdentifier: "tela1", sender: self)
            
        } else {
            let alert = UIAlertController(title: "Alert", message: "Erro no login e/ou senha!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    

}
