//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Павел Маркин on 30/06/2019.
//  Copyright © 2019 Павел Маркин. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let placeNames = ["Home", "Work", "Магнит", "Пятёрочка"]

    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in placeNames {
            places.append(Place(name: place, location: "Смоленск", type: "Type", image: place) )
        }
        return places
    }
    
}
