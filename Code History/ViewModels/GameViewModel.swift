//
//  GameViewModel.swift
//  Code History
//
//  Created by Stephanie Michael on 1/4/23.
//

import SwiftUI

class GameViewModel: ObservableObject {
    // Published properties
    @Published private var game = Game()
    // Internal properties
    var currentQuestion: Question {
        game.currentQuestion
    }
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    func makeGuess(atIndex index:Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen(){
        game.updateGameStatus()
    }
    
}
