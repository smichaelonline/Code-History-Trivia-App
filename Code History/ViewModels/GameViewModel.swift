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
    
}
