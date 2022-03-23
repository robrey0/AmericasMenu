//
//  BoardOfDirectors.swift
//  FoodMenu
//
//  Created by NEW on 3/8/22.
//

import Foundation

struct Director: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let image : String?
    
    var imageName: String {
        image ?? "noimage"
    }
}
