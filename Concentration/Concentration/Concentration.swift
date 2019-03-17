//
//  Concentration.swift
//  Concentration
//
//  Created by carmen 1 on 16.03.19.
//  Copyright © 2019 carmen 1. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    var cardsAlreadyFaceUp : [Card] {
        get {
            var result = [Card]()
            for card in cards {
                if card.isFaceUp {
                    result.append(card)
                }
            }
            return result
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card1 = Card()
            let card2 = Card(identifier: card1.identifier)
            cards += [card1, card2]
        }
    }
    
    func chooseCard(at index: Int) {
        let cardChosen = cards[index]
        // if card is already matched, do nothing
        if cardChosen.isMatched {
            return
        }
        
        switch cardsAlreadyFaceUp.count {
            case 0:
                // flip card
                cardChosen.isFaceUp = true
            case 1:
                let otherCard = cardsAlreadyFaceUp.first!
                // if this card is already flipped, do nothing
                if cardChosen === otherCard {
                    break
                }
                // flip this card
                cardChosen.isFaceUp = true
                // if another card is already flipped, check for match
                if cardChosen.identifier == otherCard.identifier {
                    cardChosen.isMatched = true
                    otherCard.isMatched = true
                }
            case 2:
                // flip both and execute method one again
                cardsAlreadyFaceUp.first?.isFaceUp = false
                cardsAlreadyFaceUp.first?.isFaceUp = false
                // flip this card
                cardChosen.isFaceUp = true
            default:
                // assert
                return
        }
    }
    
    
}
