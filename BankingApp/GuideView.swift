//
//  GuideView.swift
//  BankingApp
//
//  Created by Fahad Matlagitu on 01/11/2023.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        ZStack{
            HStack {
                Text("Benefits")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .padding()
            }
            .frame(width: 300,height: 600,alignment: .top)
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.gray))
            .offset(y:-60)
            
            HStack {
                Text("Insurance")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .padding()
            }
            .foregroundStyle(.white)
            .frame(width: 300,height: 600,alignment: .top)
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.black))
            
            VStack {
                HStack {
                    Text("Travel Savings")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .fontWeight(.heavy)
                        .frame(width: 200)
                        .padding()
                    Spacer()
                    Image(systemName: "minus")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .padding()
                }
                .frame(width: 300,height: 600,alignment: .top)
                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.lime))
                .offset(y:80)
                
                HStack {
                    Image(systemName: "dollarsign.circle")
                        .font(.largeTitle)
                    VStack {
                        Text("No fee ATM withdrawls")
                        Text("Up to $5000 per Month")
                            .foregroundStyle(.black.opacity(0.5))
                    }
                    
                }
                
                
                
            }
        }
    }
}

#Preview {
    GuideView()
}
