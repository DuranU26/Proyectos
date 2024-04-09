//
//  ViewController.swift
//  Caballero
//
//  Created by Moviles on 31/01/23.
//  Copyright © 2023 personal. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var Imagen: UIImageView!
    @IBOutlet weak var Salida: UITextView!
    
    var miCaballero : Caballero?
    var cadena : String = ""
    var numeroAleatorio : Int = 0
    var crear : String = ""
    var trans : String = ""
    var armor : String = ""
    var nombre : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func mostrarCaballero(){
        
        numeroAleatorio = Int.random(in: 1...4)
        if numeroAleatorio == 1 {
            nombre = "Seiya"
            crear = "seiya-sin-armadura.jpeg"
            trans = "seiya.jpeg"
            armor = "Pegaso"
        } else if numeroAleatorio == 2 {
            nombre = "Hyoga"
            crear = "hyoga-sin-armadura.jpeg"
            trans = "hyoga.jpeg"
            armor = "Cisne"
        } else if numeroAleatorio == 3 {
            nombre = "Camus"
            crear = "camus-sin-armadura.jpeg"
            trans = "camus.jpeg"
            armor = "Acuario"
        }else if numeroAleatorio == 4 {
            nombre = "Mu"
            crear = "mu-sin-armadura.jpeg"
            trans = "mu.jpeg"
            armor = "Aries"
        }
    }

    @IBAction func Crear(_ sender: Any) {
        cadena = ""
        mostrarCaballero()
        miCaballero = Caballero(nombre : nombre, armadura:"Sin Armadura")
        cadena = miCaballero!.mostrarFicha()
        Salida.text = cadena
        self.Imagen.image = UIImage(named: crear)
    }
    
    @IBAction func Transformar(_ sender: Any) {
        cadena = ""
        miCaballero = Caballero(nombre : nombre, armadura: armor)
        miCaballero?.setTransformado(transformado: true)
        miCaballero?.setArmadura(armadura: armor)
        cadena += miCaballero!.transformar()
        cadena += miCaballero!.mostrarFicha()
        Salida.text = ""
        Salida.text = cadena
        self.Imagen.image = UIImage(named: trans)
    }
    
    @IBAction func Pelear(_ sender: Any) {
        if miCaballero?.getTransformado() == true {
            cadena += miCaballero!.luchar()
            Salida.text = cadena
        }
        else{
            cadena += "\nEl Caballero no puede pelear"
            Salida.text = cadena
        }
    }
    
    @IBAction func MostrarInfo(_ sender: Any) {
        if(miCaballero != nil){
            cadena = miCaballero!.mostrarFicha()
            Salida.text = cadena
        }
        else{
            Salida.text = "El caballero no ha sido creado"
        }
    }
}

