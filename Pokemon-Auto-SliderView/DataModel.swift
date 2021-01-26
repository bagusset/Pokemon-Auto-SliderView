//
//  DataModel.swift
//  Pokemon-Auto-SliderView
//
//  Created by Bagus setiawan on 25/01/21.
//

import UIKit

class DataModel {
    var id: Int?
    var name: String?
    var imageUrl : String?
    var image : UIImage?
    var weight : Int?
    var height : Int?
    var attack : Int?
    var defense : Int?
    var description : String?
    
    init(id: Int, dictionary : [String : AnyObject]) {
        self.id = id
        
        if let name = dictionary["name"] as? String {
            self.name = name
        }
        
        if let imageUrl = dictionary["imageUrl"] as? String {
            self.imageUrl = imageUrl
        }
        
        if let weight = dictionary["weight"] as? Int {
            self.weight = weight
        }
        
        if let height = dictionary["height"] as? Int {
            self.height = height
        }
        
        if let attack = dictionary["attack"] as? Int {
            self.attack = attack
        }
        
        if let defense = dictionary["defense"] as? Int {
            self.defense = defense
        }
        
        if let description = dictionary["description"] as? String {
            self.description = description
        }
    }
}
