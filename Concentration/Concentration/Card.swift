//
//  Card.swift
//  Concentration
//
//  Created by carmen 1 on 16.03.19.
//  Copyright © 2019 carmen 1. All rights reserved.
//

import Foundation

class Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
    init(identifier: Int) {
        self.identifier = identifier
    }
}
