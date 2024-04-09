//
//  ViewController.swift
//  Practica_5
//
//  Created by Moviles on 07/02/23.
//  Copyright © 2023 personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
    @IBOutlet weak var boton4: UIButton!
    @IBOutlet weak var boton5: UIButton!
    @IBOutlet weak var boton6: UIButton!
    @IBOutlet weak var boton7: UIButton!
    @IBOutlet weak var boton8: UIButton!
    @IBOutlet weak var boton9: UIButton!
    @IBOutlet weak var boton10: UIButton!
    @IBOutlet weak var boton11: UIButton!
    @IBOutlet weak var boton12: UIButton!
    @IBOutlet weak var boton13: UIButton!
    @IBOutlet weak var boton14: UIButton!
    @IBOutlet weak var boton15: UIButton!
    @IBOutlet weak var boton16: UIButton!
    var lleno : Bool = true
    var juego = Taken()
    var numero : String = ""
    var tablero : [String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15", " "]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // boton1.backgroundColor = .red
        // boton1.setTitle("2", for: .normal)
        // cadena = boton1.currentTitle!
        // boton16.setTitle(cadena, for: .normal)
        tablero.shuffle()
        boton1.setTitle(tablero[0], for: .normal)
        boton2.setTitle(tablero[1], for: .normal)
        boton3.setTitle(tablero[2], for: .normal)
        boton4.setTitle(tablero[3], for: .normal)
        boton5.setTitle(tablero[4], for: .normal)
        boton6.setTitle(tablero[5], for: .normal)
        boton7.setTitle(tablero[6], for: .normal)
        boton8.setTitle(tablero[7], for: .normal)
        boton9.setTitle(tablero[8], for: .normal)
        boton10.setTitle(tablero[9], for: .normal)
        boton11.setTitle(tablero[10], for: .normal)
        boton12.setTitle(tablero[11], for: .normal)
        boton13.setTitle(tablero[12], for: .normal)
        boton14.setTitle(tablero[13], for: .normal)
        boton15.setTitle(tablero[14], for: .normal)
        boton16.setTitle(tablero[15], for: .normal)
        
        
    }
    
    @IBAction func b1(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 0, movimientos: [1,4])
            boton1.setTitle(tablero[0], for: .normal)
            boton2.setTitle(tablero[1], for: .normal)
            boton5.setTitle(tablero[4], for: .normal)
        
    }
    
    @IBAction func b2(_ sender: Any) {
        //juego.moverTecla(boton1: boton2, boton2: boton3)
    }
    
    @IBAction func b15(_ sender: Any) {
        
    }
    
    
    @IBAction func b6(_ sender: Any) {
        if boton6.currentTitle! != " "{
            if boton2.currentTitle! == " "{
                //juego.moverTecla(boton1: boton6, boton2: boton2)
            }
        }
    }
}

