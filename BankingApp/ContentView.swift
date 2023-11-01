//
//  ContentView.swift
//  BankingApp
//
//  Created by Fahad Matlagitu on 30/10/2023.
//

import SwiftUI

struct BankProfile: Identifiable{
    var id = UUID()
    var image: String
    var name: String
}
var allprofiles = [BankProfile(image: "JCole-img", name: "J.Cole"), BankProfile(image: "Future-img", name: "Future"), BankProfile(image: "theweeknd-img", name: "TheWeeknd"), BankProfile(image: "theweeknd-img", name: "TheWeeknd")]

struct orderlist: Identifiable{
    var id = UUID()
    var image: String
    var PaymentAt: String
    var PaymentTime: String
    var Price: String
}

var allorderlist = [orderlist(image: "Amazon-img", PaymentAt: "Amazon", PaymentTime: "6:45pm", Price: "$6.90"),orderlist(image: "Donut-img", PaymentAt: "Donuts", PaymentTime: "10:00pm", Price: "$35")]

struct ContentView: View {
    var body: some View {
        VStack(spacing:4){
            HStack(spacing:16){
                Image("UnitedStates")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width:50,height: 50)
                    .aspectRatio(contentMode: .fit)
                Text("US Dollar")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "bell")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Image(systemName: "ellipsis")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding()
            
            HStack {
                Text("$")
                    .padding(.bottom)
                Text("25,685")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(".55")
                    .padding(.bottom)
            }
            .padding()
            
            HStack{
                Image(systemName: "plus")
                    .frame(width: 25,height: 25)
                    .background(.lime)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.leading)
                Text("ADD MONEY")
                    .padding(.horizontal)
            }
            .frame(width: 200,height: 50)
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.clear).stroke(.gray, lineWidth: 2))
            .padding(.bottom)
            ScrollView(.horizontal, showsIndicators: false){
                
                
                
                
                HStack{
                    VStack {
                        Image(systemName: "arrow.right")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(width: 75,height: 75)
                            .background(.lime)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal)
                        Text(" ")
                            .font(.title2)
                    }
                    
                    
                    
                    ForEach(allprofiles) { allprofile in
                        VStack {
                            Image(allprofile.image)
                                .resizable()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .frame(width: 75,height: 75)
                                .background(.lime)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                            Text(allprofile.name)
                                .font(.title2)
                        }
                        
                    }
                }
                .padding()
                
                
            }
            RoundedRectangle(cornerRadius: 10)
                .frame(width:50,height: 10)
                .padding()
            
        }
        .background(RoundedRectangle(cornerRadius: 24).fill(.white))
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        
        VStack{
            HStack {
                Text("Today")
                Spacer()
                Text("$264")
            }
            .padding()
            ForEach(allorderlist) { orderlist in
                HStack {
                    Image(orderlist.image)
                        .resizable()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(width: 60,height: 60)
                        .background(.lime)
                        .clipShape(Circle())
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    VStack {
                        Text(orderlist.PaymentAt)
                        Text(orderlist.PaymentTime)
                            .foregroundStyle(.black.opacity(0.5))
                    }
                    .padding()
                    Spacer()
                    Text(orderlist.Price)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            .padding()
            }
            HStack(spacing:8*6){
                Image(systemName: "house")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                Image(systemName: "alarm")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                Image(systemName: "creditcard")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                Image(systemName: "person")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
            }
            .padding(.top)
        }
        .padding()
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    ContentView()
}
