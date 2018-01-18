//
//  ViewController.swift
//  VisitedCity's
//
//  Created by Aldo Aram Martinez Mireles on 1/8/18.
//  Copyright © 2018 Aldo Aram Martinez Mireles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var city : City!
    var cities : [City] = []
    var cityId : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        city = City(name: "Monterrey", foundation: "20 de septiembre del 1596", poblation: 41000000, country: "Mexico", image: #imageLiteral(resourceName: "Monterrey"), color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        cities.append(city)
        
        city = City(name: "San Francisco", foundation: "29 de junio del 1776", poblation: 864816, country: "Estados Unidos", image: #imageLiteral(resourceName: "San Francisco"), color: #colorLiteral(red: 1, green: 0.7741118238, blue: 0.3923542107, alpha: 1))
        cities.append(city)
        
        city = City(name: "Los Angeles", foundation: "4 de septiembre del 1781", poblation: 3976000, country: "Estados Unidos", image: #imageLiteral(resourceName: "Los Angeles"), color: #colorLiteral(red: 1, green: 0.4544541838, blue: 0.4526622243, alpha: 1))
        cities.append(city)
        
        city = City(name: "Washington D.C.", foundation: "16 de julio de 1790", poblation: 658893, country: "Estados Unidos", image: #imageLiteral(resourceName: "Washington"), color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        cities.append(city)
        
        city = City(name: "New York", foundation: "1624", poblation: 8538000, country: "Estados Unidos", image: #imageLiteral(resourceName: "New York"), color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
        cities.append(city)
        
        updateView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var cityImage: UIImageView!
    @IBOutlet var Name: UILabel!
    @IBOutlet var Country: UILabel!
    @IBOutlet var Fundation: UILabel!
    @IBOutlet var Population: UILabel!
    
    @IBAction func changeCity(_ sender: UIButton) {
        cityId += 1
        if cityId>=cities.count {
            cityId = 0
        }
        
        updateView()
    }
    
    @IBAction func addPeople(_ sender: UIButton) {
        city.addPeople(peopleToAdd: 100)
        updateView()
    }
    
    func updateView() {
        city = cities[cityId]
        UIView.animate(withDuration: 2, delay: 0, options: [.allowUserInteraction, .curveLinear], animations: {
            self.cityImage.image = self.city.image
            self.Name.text = self.city.name
            self.Country.text = self.city.country
            self.Fundation.text = self.city.foundation
            self.Population.text = "\(self.city.poblation!) habitantes"
            self.view.backgroundColor = self.city.color
        })

    }
}

