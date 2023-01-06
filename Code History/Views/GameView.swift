//
//  ContentView.swift
//  Code History
//
//  Created by Stephanie Michael on 12/8/22.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 65)
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        //to update to iOS 16 guidelines
        .background(
            NavigationLink(destination: Text("Game Over!"),
                           isActive: .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .padding(.top, -50.0)
    }
}
