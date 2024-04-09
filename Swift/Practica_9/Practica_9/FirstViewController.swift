//
//  FirstViewController.swift
//  Practica_9
//
//  Created by Moviles on 07/03/23.
//  Copyright © 2023 personal. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var fecha: UILabel!
    override func viewDidLoad(){
        super.viewDidLoad ()
        obtenerFecha()
    }
    // Do any additional setup after loading the view, typically from a nib.
    func obtenerFecha ( ){
        let date = Date()
        let dateFormatter = DateFormatter ( )
        dateFormatter.dateStyle = .full
        fecha.text = (dateFormatter.string(from: date))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

