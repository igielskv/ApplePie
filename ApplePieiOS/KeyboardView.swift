//
//  KeyboardView.swift
//  ApplePieiOS
//
//  Created by Manoli on 15/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {
    
    @Binding var currentGame: Game
    
    var body: some View {
        VStack(spacing: 10) {
            keysFor(letters: "QWERTYUIOP")
            keysFor(letters: "ASDFGHJKL")
            keysFor(letters: "ZXCVBNM")
        }
        .padding()
    }
    
    func keysFor(letters: String) -> some View {
        HStack(spacing: 20) {
            ForEach(letters.map { String($0) }, id: \.self) { letter in
                Button(action: { self.currentGame.playerGuessed(letter: letter.lowercased()) }) {
                    Text(letter)
                        .font(Font.system(size: 30.0))
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
