//
//  FirstQuestion.swift
//  QuestionApp
//
//  Created by Julie Wang on 6/25/24.
//

import SwiftUI

struct FirstQuestion: View {
    @State private var response = ""
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("1. What is the hardest natural substance found on Earth?").font(Font.custom("Lato-Black", size: 30)).multilineTextAlignment(.center)
                    
           
    
                Button("A. Diamond") {
                    response = "Correct! ✅ 🥳"
                }
                .padding(.horizontal)
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("B. Quartz"){
                    response = "Incorrect 🙁 ❌"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("C. Topaz"){
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
                
                NavigationLink(destination: SecondQuestion()) {
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
    FirstQuestion()
}
