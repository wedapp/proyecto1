//
//  ViewControllerWords.swift
//  proyecto1
//
//  Created by Weda Alves on 01-05-20.
//  Copyright © 2020 wedapp. All rights reserved.
//

import UIKit

class ViewControllerWords: UIViewController {
    
    @IBOutlet weak var wordsLabel: UILabel!
    @IBOutlet weak var wedaLabel: UILabel!
    
    @IBOutlet weak var myButtonEuphoria: UIButton!
    @IBOutlet weak var myButtonConfidence: UIButton!
    @IBOutlet weak var myButtonAngry: UIButton!
    @IBOutlet weak var myButtonSadness: UIButton!
    @IBOutlet weak var myButtonMotivation: UIButton!
    @IBOutlet weak var myButtonLonelyness: UIButton!
    @IBOutlet weak var myButtonFear: UIButton!
    @IBOutlet weak var myButtonJoy: UIButton!
    @IBOutlet weak var myButtonPatience: UIButton!
    @IBOutlet weak var myButtonLove: UIButton!
    
     var colorDeFondo:UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = colorDeFondo
        
        myButtonEuphoria.backgroundColor = nil
        myButtonEuphoria.setTitle("Euforia", for: .normal)
        myButtonEuphoria.setTitleColor(.black, for: .normal)
        
        myButtonConfidence.backgroundColor = nil
        myButtonConfidence.setTitle("Confianza", for: .normal)
        myButtonConfidence.setTitleColor(.black, for: .normal)
        
        myButtonAngry.backgroundColor = nil
        myButtonAngry.setTitle("Rabia", for: .normal)
        myButtonAngry.setTitleColor(.black, for: .normal)
        
        myButtonSadness.backgroundColor = nil
        myButtonSadness.setTitle("Tristeza", for: .normal)
        myButtonSadness.setTitleColor(.black, for: .normal)
        
        myButtonMotivation.backgroundColor = nil
        myButtonMotivation.setTitle("Motivación", for: .normal)
        myButtonMotivation.setTitleColor(.black, for: .normal)
        
        myButtonLonelyness.backgroundColor = nil
        myButtonLonelyness.setTitle("Soledad", for: .normal)
        myButtonLonelyness.setTitleColor(.black, for: .normal)
        
        myButtonFear.backgroundColor = nil
        myButtonFear.setTitle("Miedo", for: .normal)
        myButtonFear.setTitleColor(.black, for: .normal)
        
        myButtonJoy.backgroundColor = nil
        myButtonJoy.setTitle("Alegria", for: .normal)
        myButtonJoy.setTitleColor(.black, for: .normal)
        
        myButtonPatience.backgroundColor = nil
        myButtonPatience.setTitle("Paciencia", for: .normal)
        myButtonPatience.setTitleColor(.black, for: .normal)
        
        myButtonLove.backgroundColor = nil
        myButtonLove.setTitle("Amor", for: .normal)
        myButtonLove.setTitleColor(.black, for: .normal)

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonEuphoria(_ sender: UIButton) {
        let tituloButton = [myButtonEuphoria.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonConfidence(_ sender: UIButton) {
        let tituloButton = [myButtonConfidence.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonAngry(_ sender: UIButton) {
        let tituloButton = [myButtonAngry.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonSadness(_ sender: UIButton) {
        let tituloButton = [myButtonSadness.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonMotivation(_ sender: UIButton) {
        let tituloButton = [myButtonMotivation.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonLonelyness(_ sender: UIButton) {
        let tituloButton = [myButtonLonelyness.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonFear(_ sender: UIButton) {
        let tituloButton = [myButtonFear.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonJoy(_ sender: UIButton) {
        let tituloButton = [myButtonJoy.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonPatience(_ sender: UIColor) {
        let tituloButton = [myButtonPatience.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    @IBAction func buttonLove(_ sender: UIButton) {
        let tituloButton = [myButtonLove.title(for: .normal)]
        performSegue(withIdentifier: "VCMessage", sender: tituloButton)
    }
    
    // Para enviar la palabra elegida como título de la pantalla de mensaje
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCMessage" {
            if let destino = segue.destination as? ViewControllerMessage {
                if let tituloButton = sender as? Array<Any> {
                    destino.titulo = tituloButton[0] as? String
                }
                destino.colorDeFondo = colorDeFondo
            }
        }
    }
}
