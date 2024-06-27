//
//  FifthQuestion.swift
//  QuestionApp
//
//  Created by Julie Wang on 6/25/24.
//

import SwiftUI

struct FifthQuestion: View {
    @State private var response = ""
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("5. Which of the following animals is capable of regenerating lost body parts?").font(Font.custom("Lato-Black", size: 25))
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
           
    
                Button("A. Eagle") {
                    response = "🦅Incorrect❌ "
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("B. Dog"){
                    response = "🐶 😞Incorrect"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("C. Starfish"){
                    response = "Correct!🤩✨"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)

                
                Text(response)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 100)
                
                NavigationLink(destination: ContentView()) {
                    Text("Home")
                        .fontWeight(.heavy)
                        .frame(width: 200, height:50)
                        .foregroundColor(.white)
                        .background(Color("NavigationButton"))
                        .cornerRadius(20)
                        
                }
                
            }
          
        }
    }
}

#Preview {
    FifthQuestion()
}
