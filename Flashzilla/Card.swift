//
//  Card.swift
//  Flashzilla
//
//  Created by Juan Carlos Robledo Morales on 03/12/24.
//

import Foundation

struct Card: Codable {
    var prompt: String
    var answer: String
    
    static let example = Card(prompt: "Who played trhe 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}

