//
//  FourthQuestion.swift
//  QuestionApp
//
//  Created by Julie Wang on 6/25/24.
//

import SwiftUI

struct FourthQuestion: View {
    @State private var response = ""
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 50){
                Text("4. Which element is known as the King of Elements due to its central role in Chemistry?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
           
    
                Button("A. Hydrogen") {
                    response = "Incorrect❌"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("B. Carbon"){
                    response = "Correct! 🥳"
                }
                .fontWeight(.bold)
                .frame(width: 270, height: 70)
                .background(Color("Button"))
                .foregroundColor(.black)
                .cornerRadius(20.0)
                
                Button("C. Gold"){
                    response = "Incorrect 🙁"
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
                
                NavigationLink(destination: FifthQuestion()) {
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
    FourthQuestion()
}
