//
//  Restaurant.swift
//  FoodMenu
//
//  Created by NEW on 2/22/22.
//

import Foundation

struct Restaurant: Codable, Identifiable {
    
    struct BoardOfDirectors: Codable {
        let name, title: String
    }
    
    
    let name: String
    var ceo: String
    let employees: Int
    let category: String
    let website: String
    let description: String
    let id: Int
    let imageName: String
    let bod : [BoardOfDirectors]
}
