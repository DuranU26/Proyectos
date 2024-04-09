//
//  SecondViewController.swift
//  Practica_10
//
//  Created by Ulises Duran on 3/21/23.
//  Copyright © 2023 Ulises Duran. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var temperatura: UITextField!
    @IBOutlet weak var tem: UILabel!
    var temper: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func consultaTemp(_ sender: Any) {
        let temp = temperatura.text
                let APIkey = "0ee8e34ea3c8674210ebb7c02023f9b9" //Coloca tu APIkey
                let APIurl = "http://api.openweathermap.org/data/2.5/weather?q=\(temp!)&appid=\(APIkey)"+"&es&lang=sp&units=metric"
                print (APIurl)
                //Llamada
                let url = URL    (string: APIurl)
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
                        if let main = json["main"] as? [String:Any], let tempe = main["temp"] as? Double {
                            
                            DispatchQueue.main.async {
                                self.temper = tempe.description + "°C"
                                self.tem.text = self.temper
                            }
                            
                        }
                        
                        } catch let error as NSError{
                            print(error)
                    }
                })
                task.resume ()
                
            }
           
        }


