//
//  GameViewModel.swift
//  ApplePie
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

class GameViewModel: ObservableObject {
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totalLosses = 0
    
    @Published var currentGame: Game! {
        didSet {
            if currentGame.incorrectMovesRemaining == 0 {
                totalLosses += 1
                newRound()
            } else if currentGame.word == currentGame.formattedWord {
                totalWins += 1
                newRound()
            }
        }
    }
    
    init() {
        newRound()
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: String())
        }
    }
}
