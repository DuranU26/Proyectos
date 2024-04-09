//
//  FirstViewController.swift
//  Practica_10
//
//  Created by Ulises Duran on 3/21/23.
//  Copyright © 2023 Ulises Duran. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var nombreCiudad: UITextField!
    @IBOutlet weak var back: UIImageView!
    @IBOutlet weak var icono: UIImageView!
    @IBOutlet weak var descp: UILabel!
    var iconoImg = UIImage(named: "blanco.jpg")
    var fondo = UIImage(named: "blanco.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func consultarClima(_ sender: Any) {
        let ciudad = nombreCiudad.text
        let APIkey = "0ee8e34ea3c8674210ebb7c02023f9b9" //Coloca tu APIkey
        let APIurl = "http://api.openweathermap.org/data/2.5/weather?q=\(ciudad!)&appid=\(APIkey)"+"&es&lang=sp&units=metric"
        print (APIurl)
        //Llamada
        let url = URL	(string: APIurl)
        let session = URLSession.shared
	        let task = session.dataTask(with: url!, completionHandler: { data, respose, error -> Void in
            if(error != nil){
                print (error!.localizedDescription)
            }
            else{
                let dataString = String(data: data!, encoding: String.Encoding.utf8)
                print("All the weather data:\n\(dataString!)\n")
            }
            do{
                guard let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] else{
                        print("bad json")
                        return
                    }
                if let results = json["weather"] as? [[String:Any]], let primerresultado = results.first, let desc = primerresultado["description"] as? String, let icon = primerresultado["icon"] as? String, let main = primerresultado["main"] as? String {
                    guard let url = URL(string: "https://openweathermap.org/img/wn/\(icon)@2x.png") else { return }
                    let task = URLSession.shared.dataTask(with: url){
                        (data, response, error) in
                        guard let data = data else {return}
                        DispatchQueue.main.async {
                            self.iconoImg = UIImage(data: data)
                            self.icono.image = self.iconoImg
                            
                            
                        }
                    }
                    task.resume()
                    DispatchQueue.main.async {
                        self.descp.text = desc.uppercased()
                    switch main {
                    case "Thunderstorm":
                        self.fondo = UIImage(named: "thunderstorm.jpg")
                    break
                    case "Rain", "Drizzle":
                        self.fondo = UIImage(named: "raindri.jpg")
                    break
                    case "Snow":
                        self.fondo = UIImage(named: "snow.jpeg")
                    break
                    case "Atmosphere", "Haze", "Mist", "Smoke", "Dust", "Fog", "Sand", "Ash", "Squall", "Tornado":
                        self.fondo = UIImage(named: "haze.jpg")
                    break
                    case "Clear":
                        self.fondo = UIImage(named: "clear.jpg")
                    
                    break
                    case "Clouds":
                        self.fondo = UIImage(named: "clouds.jpg")
                    break
                    default: break
                        
                    }
                        self.back.image = self.fondo
                    }
                    
                }
                
                } catch let error as NSError{
                    print(error)
            }
        })
        task.resume ()
        
    }
   
}

