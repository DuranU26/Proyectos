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
   
    @IBOutlet weak var salida: UITextView!
    
    var movimiento : Int = 0
    var ganar : Bool = false
    var juego = Taken()
    var numero : String = ""
    var tablero : [String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"," "]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // boton1.backgroundColor = .red
        // boton1.setTitle("2", for: .normal)
        // cadena = boton1.currentTitle!
        // boton16.setTitle(cadena, for: .normal)
        //tablero.shuffle()
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
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
        
    }
    
    @IBAction func b2(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 1, movimientos: [0,2,5])
        boton1.setTitle(tablero[0], for: .normal)
        boton2.setTitle(tablero[1], for: .normal)
        boton3.setTitle(tablero[2], for: .normal)
        boton6.setTitle(tablero[5], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    @IBAction func b3(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 2, movimientos: [1,3,6])
        boton2.setTitle(tablero[1], for: .normal)
        boton3.setTitle(tablero[2], for: .normal)
        boton4.setTitle(tablero[3], for: .normal)
        boton7.setTitle(tablero[6], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    @IBAction func b4(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 3, movimientos: [2,7])
        boton3.setTitle(tablero[2], for: .normal)
        boton4.setTitle(tablero[3], for: .normal)
        boton8.setTitle(tablero[7], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    @IBAction func b5(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 4, movimientos: [0,5,8])
        boton1.setTitle(tablero[0], for: .normal)
        boton5.setTitle(tablero[4], for: .normal)
        boton6.setTitle(tablero[5], for: .normal)
        boton9.setTitle(tablero[8], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    
    @IBAction func b6(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 5, movimientos: [1,4,6,9])
        boton2.setTitle(tablero[1], for: .normal)
        boton5.setTitle(tablero[4], for: .normal)
        boton6.setTitle(tablero[5], for: .normal)
        boton7.setTitle(tablero[6], for: .normal)
        boton10.setTitle(tablero[9], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    @IBAction func b7(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 6, movimientos: [2,5,7,10])
        boton3.setTitle(tablero[2], for: .normal)
        boton6.setTitle(tablero[5], for: .normal)
        boton7.setTitle(tablero[6], for: .normal)
        boton8.setTitle(tablero[7], for: .normal)
        boton11.setTitle(tablero[10], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    @IBAction func b8(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 7, movimientos: [3,6,11])
        boton4.setTitle(tablero[3], for: .normal)
        boton7.setTitle(tablero[6], for: .normal)
        boton8.setTitle(tablero[7], for: .normal)
        boton12.setTitle(tablero[11], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    @IBAction func b9(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 8, movimientos: [4,9,12])
        boton5.setTitle(tablero[4], for: .normal)
        boton9.setTitle(tablero[8], for: .normal)
        boton10.setTitle(tablero[9], for: .normal)
        boton13.setTitle(tablero[12], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    
    @IBAction func b10(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 9, movimientos: [5,8,10, 13])
        boton6.setTitle(tablero[5], for: .normal)
        boton9.setTitle(tablero[8], for: .normal)
        boton10.setTitle(tablero[9], for: .normal)
        boton11.setTitle(tablero[10], for: .normal)
        boton14.setTitle(tablero[13], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    @IBAction func b11(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 10, movimientos: [6,9,11, 14])
        boton7.setTitle(tablero[6], for: .normal)
        boton10.setTitle(tablero[9], for: .normal)
        boton11.setTitle(tablero[10], for: .normal)
        boton12.setTitle(tablero[11], for: .normal)
        boton15.setTitle(tablero[14], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    @IBAction func b12(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 11, movimientos: [7,10,15])
        boton8.setTitle(tablero[7], for: .normal)
        boton11.setTitle(tablero[10], for: .normal)
        boton12.setTitle(tablero[11], for: .normal)
        boton16.setTitle(tablero[15], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    @IBAction func b13(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 12, movimientos: [8,13])
        boton9.setTitle(tablero[8], for: .normal)
        boton13.setTitle(tablero[12], for: .normal)
        boton14.setTitle(tablero[13], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    @IBAction func b14(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 13, movimientos: [9,12,14])
        boton10.setTitle(tablero[9], for: .normal)
        boton13.setTitle(tablero[12], for: .normal)
        boton14.setTitle(tablero[13], for: .normal)
        boton15.setTitle(tablero[14], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    @IBAction func b15(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 14, movimientos: [10,13,15])
        boton11.setTitle(tablero[10], for: .normal)
        boton14.setTitle(tablero[13], for: .normal)
        boton15.setTitle(tablero[14], for: .normal)
        boton16.setTitle(tablero[15], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
        
    }
    @IBAction func b16(_ sender: Any) {
        tablero = juego.moverTecla(tablero: tablero, posicion: 15, movimientos: [11,14])
        boton12.setTitle(tablero[11], for: .normal)
        boton15.setTitle(tablero[14], for: .normal)
        boton16.setTitle(tablero[15], for: .normal)
        movimiento = juego.obtenerMovimiento(movimientos: movimiento)
        ganar = juego.verificarTablero(tablero: tablero)
        if ganar == true {
            estado(est: false)
            salida.text = "Has ganado!!!!\n Total de movimientos:  \(String(movimiento-1)) \n Presiona el boton de reinciar para seguir jugando"
            movimiento = 0
        }
    }
    func estado (est: Bool){
        boton1.isEnabled = est
        boton2.isEnabled = est
        boton3.isEnabled = est
        boton4.isEnabled = est
        boton5.isEnabled = est
        boton6.isEnabled = est
        boton7.isEnabled = est
        boton8.isEnabled = est
        boton9.isEnabled = est
        boton10.isEnabled = est
        boton11.isEnabled = est
        boton12.isEnabled = est
        boton13.isEnabled = est
        boton14.isEnabled = est
        boton15.isEnabled = est
        boton16.isEnabled = est
        
    }
    @IBAction func reinici(_ sender: Any) {
        salida.text = ""
        estado(est: true)
        tablero  = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"," "]
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
    
    
}

