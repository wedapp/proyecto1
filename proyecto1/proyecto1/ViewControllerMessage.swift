//
//  ViewControllerMessage.swift
//  proyecto1
//
//  Created by Weda Alves on 01-05-20.
//  Copyright © 2020 wedapp. All rights reserved.
//

import UIKit

class ViewControllerMessage: UIViewController {
    
    @IBOutlet weak var meditaLabel: UILabel!
    @IBOutlet weak var messageText: UITextView!
    
    var loveQuotes = ["Hay amores tan bellos que justifican todas las locuras que hacen cometer. Plutarco", "Cierto que en el mundo de los hombres nada hay necesario, excepto el amor. Goethe", "Hay un camino seguro para llegar a todo corazón: el amor. Concepción Arenal", "El amor sólo descansa cuando muere. Un amor vivo es un amor en conflicto. Paulo Coelho", "No ser amados es una simple desventura; la verdadera desgracia es no amar. Albert Camus", "Ni la ausencia ni el tiempo son nada cuando se ama. Alfred de Musset", "En asuntos de amor, los locos son los que tienen más experiencia. De amor no preguntes nunca a los cuerdos; los cuerdos aman cuerdamente, que es como no haber amado nunca. Jacinto Benavente", "Qué lástima que pase el tiempo ¿verdad?, qué lástima que nos muramos y que nos hagamos viejos y que las cosas buenas se vayan alejando de nosotros al galope. Roberto Bolaño", "El que ha conocido solo a su mujer y la ha amado, sabe más de mujeres que el que ha conocido mil. Leon Tolstoi", "Hay que saber que no existe país sobre la tierra donde el amor no haya convertido a los amantes en poetas. Voltaire", "El amor es el anhelo de salir de uno mismo. Charles Baudelaire", "Un beso legal nunca vale tanto como un beso robado. Guy de Maupassant", "Las cartas de amor se empiezan sin saber lo que se va a decir y se terminan sin saber lo que se ha dicho. Jean-Jacques Rousseau", "El amor es tan importante como la comida. Pero no alimenta. García Márquez", "Donde no hay amor, poned amor y encontraréis amor. San Juan de la Cruz", "Te amo por encima de todo aquello que no podemos ver, por encima de lo que no podemos conocer. Federico Moccia", "Es tan corto el amor y es tan largo el olvido… Pablo Neruda", "Sabes que estas enamorado cuando no quieres acostarte porque la realidad es por fin mejor que tus sueños. Dr. Seuss", "Ama un solo día y el mundo habrá cambiado. Robert Browning", "El que puede prescindir del ser amado puede prescindir de todo. André Maurois"]
    
    var euphoriaQuotes = ["euphoriaQuotes1", "euphoriaQuotes2", "euphoriaQuotes3", "euphoriaQuotes4", "euphoriaQuotes5", "euphoriaQuotes6", "euphoriaQuotes7", "euphoriaQuotes8", "euphoriaQuotes9", "euphoriaQuotes10"]

    var joyQuotes = ["joyQuotes1", "joyQuotes2", "joyQuotes3", "joyQuotes4", "joyQuotes5", "joyQuotes6", "joyQuotes7", "joyQuotes8", "joyQuotes9", "joyQuotes10"]

    var confidenceQuotes = ["confidenceQuotes1", "confidenceQuotes2", "confidenceQuotes3", "confidenceQuotes4", "confidenceQuotes5", "confidenceQuotes6", "confidenceQuotes7", "confidenceQuotes8", "confidenceQuotes9", "confidenceQuotes10"]

    var motivationQuotes = ["Mi trabajo no es caer bien a la gente. Mi trabajo es hacerles mejores. Steve Jobs", "Tu tiempo es limitado, de modo que no lo malgastes viviendo la vida de alguien distinto. No quedes atrapado en el dogma, que es vivir como otros piensan que deberías vivir. No dejes que los ruidos de las opiniones de los demás acallen tu propia voz interior. Y, lo que es más importante, ten el coraje para hacer lo que te dice tu corazón y tu intuición. Steve Jobs", "Si vives cada día de tu vida como si fuera el último, algún día realmente tendrás razón. Steve Jobs"]

    var sadnessQuotes = ["sadnessQuotes1", "sadnessQuotes2", "sadnessQuotes3", "sadnessQuotes4", "sadnessQuotes5", "sadnessQuotes6", "sadnessQuotes7", "sadnessQuotes8", "sadnessQuotes9", "sadnessQuotes10"]

    var angerQuotes = ["angerQuotes1", "angerQuotes2", "angerQuotes3", "angerQuotes4", "angerQuotes5", "angerQuotes6", "angerQuotes7", "angerQuotes8", "angerQuotes9", "angerQuotes10"]

    var lonelinessQuotes = ["lonelinessQuotes1", "lonelinessQuotes2", "lonelinessQuotes3", "lonelinessQuotes4", "lonelinessQuotes5", "lonelinessQuotes6", "lonelinessQuotes7", "lonelinessQuotes8", "lonelinessQuotes9", "lonelinessQuotes10"]

    var fearQuotes = ["fearQuotes1", "fearQuotes2", "fearQuotes3", "fearQuotes4", "fearQuotes5", "fearQuotes6", "fearQuotes7", "fearQuotes8", "fearQuotes9", "fearQuotes10"]

    var impatienceQuotes = ["impatienceQuotes1", "impatienceQuotes2", "impatienceQuotes3", "impatienceQuotes4", "impatienceQuotes5", "impatienceQuotes6", "impatienceQuotes7", "impatienceQuotes8", "impatienceQuotes9", "impatienceQuotes10"]
    
    var titulo:String?
    
    var textContain:String?
    
    var colorDeFondo:UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        meditaLabel.text = "Medita estas palabras sobre \(titulo!)"
        self.title = titulo!
        self.view.backgroundColor = colorDeFondo
        
        if titulo! == "Euforia" {
            messageText.text = euphoriaQuotes.randomElement()
        } else if titulo! == "Confianza" {
            messageText.text = confidenceQuotes.randomElement()
        } else if titulo! == "Rabia" {
            messageText.text = angerQuotes.randomElement()
        } else if titulo! == "Tristeza" {
            messageText.text = sadnessQuotes.randomElement()
        } else if titulo! == "Motivación" {
            messageText.text = motivationQuotes.randomElement()
        } else if titulo! == "Soledad" {
            messageText.text = lonelinessQuotes.randomElement()
        } else if titulo! == "Miedo" {
            messageText.text = fearQuotes.randomElement()
        } else if titulo! == "Alegria" {
            messageText.text = joyQuotes.randomElement()
        } else if titulo! == "Paciencia" {
            messageText.text = impatienceQuotes.randomElement()
        } else if titulo! == "Amor" {
            messageText.text = loveQuotes.randomElement()
        } else {
            self.messageText.text = textContain
        }
        
        // self.messageText.text = textContain
        // messageText.text = loveQuotes.randomElement()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonOut(_ sender: Any) {
        performSegue(withIdentifier: "VC", sender: self)
    }
}
