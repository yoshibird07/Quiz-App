//
//  FinishView.swift
//  Quiz App
//
//  Created by StudentPM on 4/29/25.
//
import SwiftUI

struct FinishView: View {
    var final: Int = 0
    var total: Int = 0

    var body: some View {
        ZStack {
            Image("225-2259208_galaxy-wallpaper-iphone-x")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text("🎉 Good Job! 🎉")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("Your score is \(final)/\(total)")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(12)

                NavigationLink(destination: ContentView()) {
                    Text("Play Again")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(12)
                }
                .padding(.horizontal, 40)
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    FinishView(final: 17, total: 20)
}
