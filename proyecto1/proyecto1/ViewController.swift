//
//  ViewController.swift
//  proyecto1
//
//  Created by Weda Alves on 26-04-20.
//  Copyright © 2020 wedapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorQuestion: UILabel!
    @IBOutlet weak var wedappLabel: UILabel!
    @IBOutlet weak var myButtonRed: UIButton!
    @IBOutlet weak var myButtonOrange: UIButton!
    @IBOutlet weak var myButtonYellow: UIButton!
    @IBOutlet weak var myButtonGreen: UIButton!
    @IBOutlet weak var myButtonBlue: UIButton!
    @IBOutlet weak var myButtonLilac: UIButton!
    @IBOutlet weak var myButtonPurple: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        myButtonRed.backgroundColor = .red
        myButtonRed.setTitle("Rojo", for: .normal)
        myButtonRed.setTitleColor(.red, for: .normal)
        
        myButtonOrange.backgroundColor = .orange
        myButtonOrange.setTitle("Narajo", for: .normal)
        myButtonOrange.setTitleColor(.orange, for: .normal)
        
        myButtonYellow.backgroundColor = .yellow
        myButtonYellow.setTitle("Amarillo", for: .normal)
        myButtonYellow.setTitleColor(.yellow, for: .normal)
        
        myButtonGreen.backgroundColor = .green
        myButtonGreen.setTitle("Verde", for: .normal)
        myButtonGreen.setTitleColor(.green, for: .normal)
        
        myButtonBlue.backgroundColor = .blue
        myButtonBlue.setTitle("Azul", for: .normal)
        myButtonBlue.setTitleColor(.blue, for: .normal)
        
        myButtonLilac.backgroundColor = .systemPink
        myButtonLilac.setTitle("Rosa", for: .normal)
        myButtonLilac.setTitleColor(.systemPink, for: .normal)
        
        myButtonPurple.backgroundColor = .purple
        myButtonPurple.setTitle("Morado", for: .normal)
        myButtonPurple.setTitleColor(.purple, for: .normal	)
        
    }
    // Botones Color
    @IBAction func buttonRed(_ sender: UIButton) {
        // Código que al pulsar el botón rojo pinte la pantalla siguiente de rojo
        let colorDeFondoColores = [myButtonRed.backgroundColor]
        // Código que al pulsar el botón rojo nos mande para la pantalla de palabras
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    @IBAction func buttonOrange(_ sender: UIButton) {
        let colorDeFondoColores = [myButtonOrange.backgroundColor]
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    @IBAction func buttonYellow(_ sender: UIButton) {
        let colorDeFondoColores = [myButtonYellow.backgroundColor]
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    @IBAction func buttonGreen(_ sender: UIButton) {
        let colorDeFondoColores = [myButtonGreen.backgroundColor]
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    @IBAction func buttonBlue(_ sender: UIButton) {
        let colorDeFondoColores = [myButtonBlue.backgroundColor]
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    @IBAction func buttonLilac(_ sender: UIButton) {
        let colorDeFondoColores = [myButtonLilac.backgroundColor]
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    @IBAction func buttonPurple(_ sender: UIButton) {
        let colorDeFondoColores = [myButtonPurple.backgroundColor]
        performSegue(withIdentifier: "VCWords", sender: colorDeFondoColores)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCWords" || segue.identifier == "VCMessage2" {
            if let destino = segue.destination as? ViewControllerWords {
                if let colorDeFondoColores = sender as? Array<Any> {
                    destino.colorDeFondo = colorDeFondoColores[0] as? UIColor
                }
            }
            
            if let destino = segue.destination as? ViewControllerMessage {
            if let colorDeFondoColores = sender as? Array<Any> {
                destino.colorDeFondo = colorDeFondoColores[0] as? UIColor
                }
            }
    
        }
    }
}
