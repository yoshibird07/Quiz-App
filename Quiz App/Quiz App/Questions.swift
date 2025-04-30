//
//  Questions.swift
//  Quiz App
//
//  Created by StudentPM on 4/29/25.
//


import SwiftUI

struct joshQ {
    var question: String
    var correctAnswer: String
    var answers: [String]
}

struct Questions: View {
    @State var joshQs: [joshQ] = [
        joshQ(question: "1. What animal is known as 'Bombardiro Crocodilo' in Italian brain rot?", correctAnswer: "Flying crocodile that drops bombs", answers: ["Flying crocodile that drops bombs","Dancing monkey with a hat","Singing zebra","Spaghetti elephant"]),
        joshQ(question: "2. Which Italian brain rot character is a ballerina?", correctAnswer: "Ballerina Cappuccina", answers: ["Ballerina Cappuccina","Bombardino","Boneka Ambalabu","Bulbito Bandito"]),
        joshQ(question: "3. What is 'Spaghetti Tualetti'?", correctAnswer: "Spaghetti-themed toilet", answers: ["Spaghetti-themed toilet","Dancing cappuccino","Flying banana","Cactus hippo"]),
        joshQ(question: "4. Which animal is associated with the phrase 'Brr Brr Patapim'?", correctAnswer: "A quirky meme animal", answers: ["A quirky meme animal","A dancing cow","A singing penguin","A gangster monkey"]),
        joshQ(question: "5. What does 'Bulbito Bandito' represent?", correctAnswer: "Bandit lightbulb", answers: ["Bandit lightbulb","Cactus hippo","Singing giraffe","Dancing banana"]),
        joshQ(question: "6. Who is 'La Vaca Saturno'?", correctAnswer: "The Saturn Cow", answers: ["The Saturn Cow","The Banana Dolphin","The Crocodile Bombardier","The Assassin Cappuccino"]),
        joshQ(question: "7. Which character is a fusion of banana and dolphin?", correctAnswer: "Bananita Dolfinita", answers: ["Bananita Dolfinita","Bombombini Gusini","Tralalero Tralala","Boneka Ambalabu"]),
        joshQ(question: "8. What is 'Chimpanzini' known for?", correctAnswer: "Dancing monkey meme", answers: ["Dancing monkey meme","Flying cow","Singing spaghetti","Spying zebra"]),
        joshQ(question: "9. Who is 'Cappuccino Assassino'?", correctAnswer: "Assassin cappuccino", answers: ["Assassin cappuccino","Bandit lightbulb","Dancing ballerina","Bombarding crocodile"]),
        joshQ(question: "10. What does 'Bombombini Gusini' refer to?", correctAnswer: "Bomb-throwing worms", answers: ["Bomb-throwing worms","Dancing ballerinas","Singing zebras","Gangster monkeys"]),
        joshQ(question: "11. Which Italian brain rot animal is a zebra hybrid?", correctAnswer: "Zibra Zubra Zibralini", answers: ["Zibra Zubra Zibralini","Bulbito Bandito","Bananita Dolfinita","Bombardino"]),
        joshQ(question: "12. What is 'Boneka Ambalabu'?", correctAnswer: "Creepy evil doll", answers: ["Creepy evil doll","Dancing monkey","Spaghetti elephant","Flying crocodile"]),
        joshQ(question: "13. Who is 'Gangster Footera'?", correctAnswer: "Gangster footballer animal", answers: ["Gangster footballer animal","Assassin cappuccino","Bombarding crocodile","Dancing ballerina"]),
        joshQ(question: "14. What does 'Tralalero Tralala' represent?", correctAnswer: "Absurd meme character", answers: ["Absurd meme character","Dancing cow","Bomb-throwing worm","Singing banana"]),
        joshQ(question: "15. Which animal is 'Blueberrini'?", correctAnswer: "Blueberry-themed animal", answers: ["Blueberry-themed animal","Cactus hippo","Singing penguin","Dancing ballerina"]),
        joshQ(question: "16. What is 'Frigo Camelo Buffo Fardello'?", correctAnswer: "Funny fridge camel", answers: ["Funny fridge camel","Bandit lightbulb","Assassin cappuccino","Bombarding crocodile"]),
        joshQ(question: "17. Who is 'Trulimero Trulicina'?", correctAnswer: "Poolside meme duo", answers: ["Poolside meme duo","Dancing ballerina","Gangster monkey","Bomb-throwing worm"]),
        joshQ(question: "18. What is 'Penguin Cocosino'?", correctAnswer: "Penguin with coconuts", answers: ["Penguin with coconuts","Dancing zebra","Assassin cappuccino","Bombarding crocodile"]),
        joshQ(question: "19. Who is 'Salamandra Rostitta'?", correctAnswer: "Roasted salamander", answers: ["Roasted salamander","Bandit lightbulb","Dancing ballerina","Bomb-throwing worm"]),
        joshQ(question: "20. What does 'Burbaloni Luliloli' refer to?", correctAnswer: "Bubble-themed meme animal", answers: ["Bubble-themed meme animal","Cactus hippo","Singing penguin","Assassin cappuccino"]),
    ]

    @State var score: Int = 0
    @State var currentQuestions: Int = 0
    @State var finish: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                Image("225-2259208_galaxy-wallpaper-iphone-x")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack(spacing: 30) {
                    Text("Score: \(score)")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(12)

                    Text(joshQs[currentQuestions].question)
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(12)

                    VStack(spacing: 15) {
                        ForEach(joshQs[currentQuestions].answers.indices, id: \.self) { i in
                            Button(action: {
                                if joshQs[currentQuestions].answers[i] == joshQs[currentQuestions].correctAnswer {
                                    score += 1
                                }
                                if currentQuestions < joshQs.count - 1 {
                                    currentQuestions += 1
                                } else {
                                    finish = true
                                }
                            }) {
                                Text(joshQs[currentQuestions].answers[i])
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.white.opacity(0.9))
                                    .foregroundColor(.black)
                                    .cornerRadius(12)
                            }
                        }
                    }
                    .padding(.horizontal, 20)

                    if finish {
                        NavigationLink(destination: FinishView(final: score, total: joshQs.count)) {
                            Text("Finish Quiz")
                                .fontWeight(.bold)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.green.opacity(0.9))
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }
                        .padding(.horizontal, 40)
                    }
                }
                .padding()
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    Questions()
}
