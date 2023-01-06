//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Stephanie Michael on 1/6/23.
//

import Foundation

struct ScoreViewModel{
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
