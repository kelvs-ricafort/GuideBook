//
//  City.swift
//  GuideBook
//
//  Created by Kelvin on 6/3/24.
//

import Foundation

struct City: Identifiable, Decodable {
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
