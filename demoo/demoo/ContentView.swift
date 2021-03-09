//
//  ContentView.swift
//  exx
//
//  Created by Fil on 2021/2/24.
//
 
import SwiftUI
struct Question{
    let quest: String
    let answer: String
 
}
 
var questions = [
    Question(quest: "How many legs does an octopus have?", answer: "8"),
    Question(quest: "How many pairs of wings do bees have?", answer: "2"),
    Question(quest: "What is a doe?", answer: "A female deer"),
    Question(quest: "What type of animal is an Orca?", answer: "A dolphin"),
    Question(quest: "What is a group of lions called?", answer: "A pride"),
    Question(quest: "What animal is called a kid?", answer: "A baby goat"),
    Question(quest: "What is a baby kangaroo called?", answer: "A joey"),
    Question(quest: "What is the largest mammal in the world?", answer: "A whale"),
    Question(quest: "What animal is the tallest in the world?", answer: "Giraffe"),
    Question(quest: "What food do pandas eat?", answer: "Bamboo"),
    Question(quest: "How many bones do sharks have? ", answer: "0"),
    Question(quest: "What is the slowest animal in the world?", answer: "The three-toed sloth"),
    Question(quest: "A snail can sleep for how many years?", answer: "3 years"),
    Question(quest: "Which animal never sleeps?", answer: "A bullfrog"),
    Question(quest: "What is a baby fox called?", answer: "A kit"),
    Question(quest: "What animal does not drink water?", answer: "A kangaroo rat"),
    Question(quest: "What animal has the longest lifespan?", answer: "A kangaroo rat"),
    Question(quest: "How many legs does a lobster have?", answer: "10"),
    Question(quest: "What kind of animal is a komodo dragon?", answer: "Lizard"),
    Question(quest: "Can an ostrich fly?", answer: "No"),
]

struct ContentView: View {
    @State private var num = 0
    @State private var answer = ""
    var body: some View {
        ZStack{
            Image("Home")
            .scaledToFill()
                Rectangle()
                .fill(Color.white)
                .frame(width: 700, height: 400)
                .opacity(0.85)
            VStack{
                Text("Question " + String(num+1))
                    .font(.system(size: 30))
                    .padding()
                Text(questions[num].quest)
                    .padding()
                HStack{
                    Text("Answer: " + answer)
                        .padding()
                }
                HStack{
                    if(num>0){
                        Button("Previous") {
                            self.num = self.num-1
                            self.answer = ""
                        }
                        .padding()
                        .font(.system(size: 20))
                        .background(Color.red)
                        .foregroundColor(.yellow)
                    }
                    if(num<9){
                        Button("Next Question") {
                            self.num = self.num+1
                            self.answer = ""
                        }
                        .padding()
                        .font(.system(size: 20))
                        .background(Color.green)
                        .foregroundColor(.blue)
                    }
                    else{
                        Button("Play Again") {
                            questions.shuffle()
                            self.num = 0
                            self.answer = ""
                        }
                        .padding()
                        .font(.system(size: 20))
                        .background(Color.green)
                        .foregroundColor(.blue)
                    }
                }.padding()
                HStack{
                    Button("Show Answer") {
                        self.answer = questions[self.num].answer
                    }
                    .padding()
                    .font(.system(size: 20))
                    .background(Color.yellow)
                    .foregroundColor(.red)
                    Button("New Game") {
                        questions.shuffle()
                        self.num = 0
                        self.answer = ""
                    }
                    .padding()
                    .font(.system(size: 20))
                    .background(Color.blue)
                    .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


