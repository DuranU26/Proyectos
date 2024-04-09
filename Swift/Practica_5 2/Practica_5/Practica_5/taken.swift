//
//  taken.swift
//  Practica_5
//
//  Created by Moviles on 14/02/23.
//  Copyright © 2023 personal. All rights reserved.
//

import Foundation
import UIKit

class Taken{
    
    var cad : String = ""
    var aux: String = ""
    
    
    func moverTecla(tablero: [String], posicion: Int, movimientos: [Int])-> [String] {
        var tabla = tablero
            for i in movimientos {
                if tabla[i] == " "{
                    tabla [i] = tabla[posicion]
                    tabla[posicion] = " "
                    break
                }
            }
        return tabla
        
    }
    
    func verificarTablero(tablero: [String])-> Bool{
        var ganar : Bool = false
        let ver: [String] = ["1","5","9","13","2","6","10","14","3","7","11","15","4","8","12"," "]
        let per: [String] = ["1","2","3","4","12","13","14","5","11"," ","15","6","10","9","8","7"]
        let es: [String] = ["7","8","9","10","6","1","2","11","5","4","3","12"," ","15","14","13"]
        let imp: [String] = ["15","14","13","12","11","10","9","8","7","6","5","4","3","2","1"," "]
        if tablero == ver {
            ganar = true
        }
        else if tablero == per {
            ganar = true
        }
        else if tablero == es {
            ganar = true
        }
        else if tablero == imp {
            ganar = true
        }
        return ganar
    }
        
    func obtenerMovimiento(movimientos: Int)-> Int{
        var mov = movimientos
        mov +=  1
        return mov
    }
        
    func reiniciar(){
            
    }

    }
    
    
