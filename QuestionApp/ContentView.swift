//
//  ContentView.swift
//  QuestionApp
//
//  Created by Julie Wang on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(spacing: 15){
                    Text("Are you ready for some science trivia?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                    Text("Start the 5-question quiz by clicking Start below. Good luck and have fun!")
                        .font(.title)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    HStack(spacing: 35){
                        Image("flasks")
                            .resizable()
                            .frame(width: 150, height: 150)
            
                        Image("book")
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
               Spacer()
                    Image("astronomy")
                        .resizable()
                        .frame(width: 150, height: 150)
                  Spacer()
                    
                    NavigationLink(destination: FirstQuestion()) {
                        Text("Start")
                            .fontWeight(.bold)
                            .frame(width: 200, height:50)
                            .foregroundColor(.white)
                            .background(Color("NavigationButton"))
                            .cornerRadius(20)
                            
                    }
                    .padding(.bottom)
                   
                    
                  
                    
                }
               
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
