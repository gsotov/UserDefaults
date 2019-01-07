//
//  ViewController.swift
//  UserDefaults
//
//  Created by Tecnova on 1/7/19.
//  Copyright © 2019 Gabriel Soto Valenzuela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func btnGuardar(_ sender: UIButton)
    {
        //Valida que el textField no sea vacio
        if texto.text == ""{
            //ejecutar alerta
            let alerta = UIAlertController(title: "Alerta", message: "Debe contener texto para ser guardado", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alerta.addAction(ok)
            present(alerta, animated: true, completion: nil)
            
        }else{
            let textoTextField = texto.text
            
            UserDefaults.standard.set(textoTextField, forKey: "valor")
            texto.text = ""
            //Cierra el boton cuando se presiona el boton
            texto.resignFirstResponder()
        }
        
    }
    
    @IBAction func btnMostrar(_ sender: UIButton)
    {
        let resultado = UserDefaults.standard.object(forKey: "valor")
        texto.text = resultado as? String
    }
    
    //Borra el teclado al presion cualquier parte de la pantalla
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    @IBAction func btnSiguienteView(_ sender: UIButton)
    {
        performSegue(withIdentifier: "segueColoresSlider", sender: nil)
    }
}

