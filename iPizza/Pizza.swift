//
//  Pizza.swift
//  iPizza
//
//  Created by Joaquín Cerdá Boluda on 12/11/15.
//  Copyright © 2015 Ximo Cerdà. All rights reserved.
//

import Foundation


// Enumeraciones auxiliares
// ----------------------------------------------------

enum Tamaño {
    case Pequeña, Mediana, Grande
}

enum Masa {
    case Delgada, Crujiente, Gruesa
}

enum Queso {
    case Mozzarella, Cheddar, Parmesano, Queso, SinQueso
}


// Clase Pizza
// ----------------------------------------------------

class Pizza  {
    
    // Características básicas
    
    var miTamaño: Tamaño? = nil
    var miMasa: Masa? = nil
    var miQueso: Queso? = nil
    
    
    // Gestión de los ingredientes adicionales
    
    var numeroDeIngredientes = 0
    
    var llevaJamón = false
    var llevaPepperoni = false
    var llevaPavo = false
    var llevaSalchicha = false
    var llevaAceituna = false
    var llevaCebolla = false
    var llevaPimiento = false
    var llevaPiña = false
    var llevaAnchoa = false
    
    
    // Métodos para la descripción textual de la pizza
    
    func DescripciónDelTamaño () -> String {
        var resultado = ""
        if let tamañoSeleccionado = miTamaño {
            switch tamañoSeleccionado {
            case Tamaño.Pequeña:
                resultado = "Has seleccionado el tamaño Pequeño\n"
            case Tamaño.Mediana:
                resultado = "Has seleccionado el tamaño Mediano\n"
            default: // Incluye la grande
                resultado = "Has seleccionado el tamaño Grande\n"
            }
        } else {
            resultado = "Todavía no has seleccionado el tamaño\n"
        }
        return resultado
    }
    
    
    func DescripciónDeLaMasa () -> String {
        var resultado = ""
        if let masaSeleccionada = miMasa {
            switch masaSeleccionada {
            case Masa.Delgada:
                resultado = "Has seleccionado la masa Delgada\n"
            case Masa.Crujiente:
                resultado = "Has seleccionado la Masa Crujiente\n"
            default: // Incluye la gruesa
                resultado = "Has seleccionado la Masa Gruesa\n"
            }
        } else {
            resultado = "Todavía no has seleccionado la masa\n"
        }
        return resultado
    }

    
    func DescripciónDelQueso () -> String {
        var resultado = ""
        if let quesoSeleccionado = miQueso {
            switch quesoSeleccionado {
            case Queso.Mozzarella:
                resultado = "Has seleccionado Queso Mozzarella\n"
            case Queso.Cheddar:
                resultado = "Has seleccionado Queso Cheddar\n"
            case Queso.Parmesano:
                resultado = "Has seleccionado Queso Parmesano\n"
            default: // Incluye sin queso
                resultado = "Has seleccionado Sin Queso\n"
            }
        } else {
            resultado = "Todavía no has seleccionado el queso\n"
        }
        return resultado
    }
    
    
    func DescripciónDeLosIngredientes () -> String {
        var resultado = "Has seleccionado \(numeroDeIngredientes) ingredientes:\n"
        if (llevaJamón == true) {
            resultado += "Jamón\n"
        }
        if (llevaPepperoni == true) {
            resultado += "Pepperoni\n"
        }
        if (llevaPavo == true) {
            resultado += "Pavo\n"
        }
        if (llevaSalchicha == true) {
            resultado += "Salchicha\n"
        }
        if (llevaAceituna == true) {
            resultado += "Aceituna\n"
        }
        if (llevaCebolla == true) {
            resultado += "Cebolla\n"
        }
        if (llevaPimiento == true) {
            resultado += "Pimiento\n"
        }
        if (llevaPiña == true) {
            resultado += "Piña\n"
        }
        if (llevaAnchoa == true) {
            resultado += "Anchoa\n"
        }
        return resultado
    }
    
    
    func CuántosIngredientes () -> String {
        return "Ingredientes: \(numeroDeIngredientes)\n"
    }
    
    
    func PizzaCorrecta () -> Bool {
        if miTamaño == nil {
            return false
        } else if miMasa == nil {
            return false
        } else if miQueso == nil {
            return false
        } else if numeroDeIngredientes < 1 {
            return false
        } else if numeroDeIngredientes > 5 {
            return false
        } else {
            return true
        }
    }

}

