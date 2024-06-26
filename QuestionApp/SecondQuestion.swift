//
//  SecondQuestion.swift
//  QuestionApp
//
//  Created by Julie Wang on 6/25/24.
//

import SwiftUI

struct SecondQuestion: View {
    @State private var response = ""
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("2. What is the primary gas found in the Earth's atmosphere?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
           
    
                Button("A. Oxygen") {
                    response = "Incorrect 🙁 ❌"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("B. Nitrogen"){
                    response = "Correct! 🙌 🎉"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("C. Carbon Dioxide"){
                    response = "Incorrect 😕"
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
                
                NavigationLink(destination: ThirdQuestion()) {
                    Text("Next Question")
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
    SecondQuestion()
}
