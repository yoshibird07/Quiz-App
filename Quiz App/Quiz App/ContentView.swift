//
//  ContentView.swift
//  Quiz App
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("225-2259208_galaxy-wallpaper-iphone-x")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack(spacing: 30) {
                    Text("🧠 Quiz Time!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .shadow(radius: 10)

                    Text("Test your Italian brain rot knowledge!")
                        .font(.title3)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(10)

                    NavigationLink(destination: Questions()) {
                        Text("🚀 Begin")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.pink.opacity(0.9))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 10)
                    }
                    .padding(.horizontal, 40)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
