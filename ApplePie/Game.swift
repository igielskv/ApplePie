//
//  Game.swift
//  ApplePie
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: String
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
