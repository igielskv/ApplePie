//
//  KeyboardView.swift
//  ApplePie
//
//  Created by Manoli on 14/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct KeyboardView: View {
    var body: some View {
        VStack {
            KeysFor(letters: "QWERTYUIOP")
            KeysFor(letters: "ASDFGHJKL")
            KeysFor(letters: "ZXCVBNM")
        }
    }
}

struct KeysFor: View {
    
    let letters: String
    
    @State private var tappedLetters = String()
    
    var body: some View {
        HStack {
            ForEach(letters.map { String($0) }, id: \.self) { letter in
                Button(action: { self.buttonTapped(letter: letter) }) {
                    Text(letter)
                }
                .disabled(self.tappedLetters.contains(letter))
            }
        }
    }
    
    func buttonTapped(letter: String) {
        print("Tapped Button with letter '\(letter)'")
        tappedLetters.append(letter)
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
