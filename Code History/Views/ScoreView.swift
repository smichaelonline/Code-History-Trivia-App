//
//  ScoreView.swift
//  Code History
//
//  Created by Stephanie Michael on 1/6/23.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.body)
                    .padding(.top, 150)
                Text("???%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack{
                    Spacer()
                    Text("??? ✅")
                    Text("??? ❌")
                }
                .font(.system(size: 30))
                .padding(.bottom, 150)
                Spacer()
                NavigationLink(destination: GameView(), label: {BottomTextView(str: "Re-take Quiz")})
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
