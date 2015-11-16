//
//  XCPizzaCreator.swift
//  iPizza
//
//  Created by Joaquín Cerdá Boluda on 12/11/15.
//  Copyright © 2015 Ximo Cerdà. All rights reserved.
//

import UIKit

class XCPizzaCreator: UIViewController {
    
    // Datos internos: la pizza
    var miPizza = Pizza()
    
    // Etiquetas con información
    @IBOutlet weak var pizzaSizeLabel: UILabel!
    @IBOutlet weak var pizzaBreadLabel: UILabel!
    @IBOutlet weak var pizzaCheeseLabel: UILabel!
    @IBOutlet weak var pizzaIngredientsLabel: UILabel!
    
    // Los ingredientes de la cuarta etapa
    @IBOutlet weak var llevaJamónSwitch: UISwitch!
    @IBOutlet weak var llevaPepperoniSwitch: UISwitch!
    @IBOutlet weak var llevaPavoSwitch: UISwitch!
    @IBOutlet weak var llevaSalchichaSwitch: UISwitch!
    @IBOutlet weak var llevaAceitunaSwitch: UISwitch!
    @IBOutlet weak var llevaCebollaSwitch: UISwitch!
    @IBOutlet weak var llevaPimientoSwitch: UISwitch!
    @IBOutlet weak var llevaPiñaSwitch: UISwitch!
    @IBOutlet weak var llevaAnchoSwitch: UISwitch!
    
    // Descripciones Finales
    @IBOutlet weak var descripciónFinal: UILabel!
    @IBOutlet weak var envíoPermitido: UILabel!
    
    // Para activar / Desactivar el botón de enviar
    @IBOutlet weak var botónDeEnvío: UIButton!
    
    
    // Métodos del ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tbc = self.tabBarController as! XCPizzaBarController
        miPizza = tbc.miPizza
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        // Descripciones parciales
        if pizzaSizeLabel != nil {
            pizzaSizeLabel.text = miPizza.DescripciónDelTamaño()
        }
        if pizzaBreadLabel !=  nil {
            pizzaBreadLabel.text = miPizza.DescripciónDeLaMasa()
        }
        if pizzaCheeseLabel !=  nil {
            pizzaCheeseLabel.text = miPizza.DescripciónDelQueso()
        }
        if pizzaIngredientsLabel !=  nil {
            pizzaIngredientsLabel.text = miPizza.CuántosIngredientes()
        }
        
        // Switches de ingredientes
        if llevaJamónSwitch != nil {
            llevaJamónSwitch.on = miPizza.llevaJamón
        }
        if llevaPepperoniSwitch != nil {
            llevaPepperoniSwitch.on = miPizza.llevaPepperoni
        }
        if llevaPavoSwitch != nil {
            llevaPavoSwitch.on = miPizza.llevaPavo
        }
        if llevaSalchichaSwitch != nil {
            llevaSalchichaSwitch.on = miPizza.llevaSalchicha
        }
        if llevaAceitunaSwitch != nil {
            llevaAceitunaSwitch.on = miPizza.llevaAceituna
        }
        if llevaCebollaSwitch != nil {
            llevaCebollaSwitch.on = miPizza.llevaCebolla
        }
        if llevaPimientoSwitch != nil {
            llevaPimientoSwitch.on = miPizza.llevaPimiento
        }
        if llevaPiñaSwitch != nil {
            llevaPiñaSwitch.on = miPizza.llevaPiña
        }
        if llevaAnchoSwitch != nil {
            llevaAnchoSwitch.on = miPizza.llevaAnchoa
        }
        
        // Pantalla final
        ActualizaDescripciónFinal()

    }
    
    // Método para fijar Tamaño
    @IBAction func SetPizzaSize(sender: AnyObject) {
        switch sender.tag {
        case 0:
            miPizza.miTamaño = Tamaño.Pequeña
        case 1:
            miPizza.miTamaño = Tamaño.Mediana
        default:
            miPizza.miTamaño = Tamaño.Grande
        }
        pizzaSizeLabel.text = miPizza.DescripciónDelTamaño()

        // Pantalla final
        ActualizaDescripciónFinal()
   }

    // Método para fijar masa
    @IBAction func SetPizzaBread(sender: AnyObject) {
        switch sender.tag {
        case 0:
            miPizza.miMasa = Masa.Delgada
        case 1:
            miPizza.miMasa = Masa.Crujiente
        default:
            miPizza.miMasa = Masa.Gruesa
        }
        pizzaBreadLabel.text = miPizza.DescripciónDeLaMasa()

        // Pantalla final
        ActualizaDescripciónFinal()
    }

    // Método para fijar tipo de queso
    @IBAction func SetPizzaCheese(sender: AnyObject) {
        switch sender.tag {
        case 0:
            miPizza.miQueso = Queso.Mozzarella
        case 1:
            miPizza.miQueso = Queso.Cheddar
        case 2:
            miPizza.miQueso = Queso.Parmesano
        default:
            miPizza.miQueso = Queso.SinQueso
        }
        pizzaCheeseLabel.text = miPizza.DescripciónDelQueso()

        // Pantalla final
        ActualizaDescripciónFinal()
    }
    
    // Método para seleccionar ingredientes
    @IBAction func ToggleIngredient(sender: UISwitch) {
        switch sender.tag {
        case 0:
            if sender.on == true {
                miPizza.llevaJamón = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaJamón = false
                miPizza.numeroDeIngredientes--
            }
        case 1:
            if sender.on == true {
                miPizza.llevaPepperoni = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaPepperoni = false
                miPizza.numeroDeIngredientes--
            }
        case 2:
            if sender.on == true {
                miPizza.llevaPavo = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaPavo = false
                miPizza.numeroDeIngredientes--
            }
        case 3:
            if sender.on == true {
                miPizza.llevaSalchicha = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaSalchicha = false
                miPizza.numeroDeIngredientes--
            }
        case 4:
            if sender.on == true {
                miPizza.llevaAceituna = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaAceituna = false
                miPizza.numeroDeIngredientes--
            }
        case 5:
            if sender.on == true {
                miPizza.llevaCebolla = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaCebolla = false
                miPizza.numeroDeIngredientes--
            }
        case 6:
            if sender.on == true {
                miPizza.llevaPimiento = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaPimiento = false
                miPizza.numeroDeIngredientes--
            }
        case 7:
            if sender.on == true {
                miPizza.llevaPiña = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaPiña = false
                miPizza.numeroDeIngredientes--
            }
        default: // Incluye el 8, que es la anchoa
            if sender.on == true {
                miPizza.llevaAnchoa = true
                miPizza.numeroDeIngredientes++
            } else {
                miPizza.llevaAnchoa = false
                miPizza.numeroDeIngredientes--
            }
        }
        pizzaIngredientsLabel.text = miPizza.CuántosIngredientes()

        // Pantalla final
        ActualizaDescripciónFinal()
    }
    
    // Función auxiliar  para el pedido final
    func ActualizaDescripciónFinal() -> () {
        if descripciónFinal != nil {
            descripciónFinal.text = miPizza.DescripciónDelTamaño()
                + miPizza.DescripciónDeLaMasa()
                + miPizza.DescripciónDelQueso()
                + miPizza.DescripciónDeLosIngredientes()
        }
        if envíoPermitido != nil {
            if miPizza.PizzaCorrecta() == true {
                envíoPermitido.text = "Ya puedes cursar tu pedido"
                botónDeEnvío.enabled = true
            } else {
                envíoPermitido.text = "Todavía no puedes cursar tu pedido"
                botónDeEnvío.enabled = false
                
            }
        }
    }
    
}

