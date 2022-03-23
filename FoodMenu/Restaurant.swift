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


//,
//{
//    "name" : "Burger King",
//    "ceo" : "José Cil",
//    "employees" : 20000,
//    "category" : "Burgers and Fries",
//    "website" : "www.bk.com",
//    "id" : 2,
//    "imageName" : "burgerking",
//    "bod" : [
//        {
//            "name" : "Josedvsgfsdg",
//            "title" : "Ceo"
//        }
//    ]
//},
//{
//    "name" : "Taco Bell",
//    "ceo" : "Mark King",
//    "employees" : 40000,
//    "category" : "Mexican-Inspired Food",
//    "website" : "www.tacobell.com",
//    "id" : 3,
//    "imageName" : "tacobell",
//    "bod" : [
//        {
//            "name" : "Mark King",
//            "title" : "Ceo"
//        }
//    ]
//},
//{
//    "name" : "Panda Express",
//    "ceo" : "Andrew Cherng",
//    "employees" : 39000,
//    "category" : "American-Chinese cuisine",
//    "website" : "www.pandarg.com",
//    "id" : 4,
//    "imageName" : "panda",
//    "bod" : [
//        {
//            "name" : "Andrew Cherng",
//            "title" : "Ceo"
//        }
//    ]
//},
