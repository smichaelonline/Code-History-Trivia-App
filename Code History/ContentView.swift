//
//  ContentView.swift
//  Code History
//
//  Created by Stephanie Michael on 12/8/22.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers:["Ant","Beetle","Moth","Fly"],
        correctAnswerIndex: 2
    )
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 60)
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding(.top, -1)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count){ answersIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answersIndex])")
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answersIndex])
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.top, -50.0)
    }
}
