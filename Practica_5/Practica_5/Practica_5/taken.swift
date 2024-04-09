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
                    tabla [i] = tablero[posicion]
                    tabla[posicion] = " "
                    
                }
            }
        return tabla
        
    }
    
    func verificarTablero(){
            
    }
        
    func obtenerMovimiento(){

    }
        
    func reiniciar(){
            
    }

    }
    
    
