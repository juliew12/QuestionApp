//
//  ThirdQuestion.swift
//  QuestionApp
//
//  Created by Julie Wang on 6/25/24.
//

import SwiftUI

struct ThirdQuestion: View {
    @State private var response = ""
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("3. Which planet in our solar system is known for having a giant red spot?").font(Font.custom("Lato-Black", size: 30))
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
           
    
                Button("A. Jupiter") {
                    response = "Correct! ✅😄"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("B. Venus"){
                    response = "Incorrect 🙁 ❌"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("C. Mars"){
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
                
                NavigationLink(destination: FourthQuestion()) {
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
    ThirdQuestion()
}
