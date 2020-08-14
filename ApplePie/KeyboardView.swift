//
//  KeyboardView.swift
//  ApplePie
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {
    
    @Binding var currentGame: Game
    
    var body: some View {
        VStack {
            keysFor(letters: "QWERTYUIOP")
            keysFor(letters: "ASDFGHJKL")
            keysFor(letters: "ZXCVBNM")
        }
    }
    
    func keysFor(letters: String) -> some View {
        HStack {
            ForEach(letters.map { String($0) }, id: \.self) { letter in
                Button(action: { self.currentGame.playerGuessed(letter: letter.lowercased()) }) {
                    Text(letter)
                }
                .disabled(self.currentGame.guessedLetters.contains(letter.lowercased()))
            }
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(currentGame: .constant(GameViewModel().currentGame))
    }
}
