//
//  City.swift
//  VisitedCity's
//
//  Created by Aldo Aram Martinez Mireles on 1/8/18.
//  Copyright © 2018 Aldo Aram Martinez Mireles. All rights reserved.
//

import Foundation
import UIKit

class City: NSObject {
    var name : String!
    var foundation : String!
    var poblation : Double!
    var country : String!
    var image : UIImage!
    var color : UIColor!
    
    override init() {
        self.name = "Desconocido"
        self.foundation = "Desconocido"
        self.poblation = 0
        self.country = "Desconocido"
    }
    
    init(name : String, foundation : String, poblation : Double, country : String, image : UIImage, color : UIColor) {
        self.name = name
        self.country = country
        self.foundation = foundation
        self.poblation = poblation
        self.image = image
        self.color = color
    }
    
    override var description: String{
        return("\(name!) fue fundada el \(foundation!), pertence a \(country!) y tiene una poblacion de \(poblation!) habitantes")
    }
    
    func addPeople(peopleToAdd: Double){
        self.poblation = self.poblation + peopleToAdd
    }
    
}
