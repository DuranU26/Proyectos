//
//  caballero.swift
//  Caballero
//
//  Created by Moviles on 31/01/23.
//  Copyright © 2023 personal. All rights reserved.
//

import Foundation

class Caballero {
    // Atributos
    private var nombre = ""
    private var armadura = ""
    private var transformado = false
    
    init(nombre: String, armadura : String){
        self.nombre = nombre
        self.armadura = armadura
    }
    
    // Metodo get y set
    func setNombre(nombre : String){
        self.nombre = nombre
    }
    
    func getNombre() -> String{
        return nombre
    }
    
    func setArmadura(armadura : String){
        self.armadura = armadura
    }
    
    func getArmadura() -> String{
        return armadura
    }
    
    func setTransformado(transformado : Bool){
        self.transformado = transformado
    }
    
    func getTransformado() -> Bool{
        return transformado
    }
    
    // Metodos
    func mostrarFicha()->String{
        var cadena = "Caballero : \(getNombre())\nArmadura: \(getArmadura())"
        if getTransformado() == true {
            cadena = cadena + "\nTransformado y listo para pelear"
        }
        else{
            cadena = cadena + "\nSin transformacion"
        }
        return cadena
    }
    
    func transformar()->String{
        return "El Caballero \(getArmadura()) se esta tranformando\n"
    }
    
    func luchar() -> String{
        return "\nEl Caballero \(getArmadura()) esta luchando..."
    }
    
}
