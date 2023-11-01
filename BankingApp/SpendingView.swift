//
//  rootview.swift
//  BankingApp
//
//  Created by Fahad Matlagitu on 31/10/2023.
//

import SwiftUI

struct Spendingview: View {
    var body: some View {
        var allorderlist = [orderlist(image: "Amazon-img", PaymentAt: "Amazon", PaymentTime: "6:45pm", Price: "$6.90"),orderlist(image: "Donut-img", PaymentAt: "Donuts", PaymentTime: "10:00pm", Price: "$20"),orderlist(image: "Jarir-img", PaymentAt: "Donuts", PaymentTime: "10:00pm", Price: "$50"),orderlist(image: "Playstation-img", PaymentAt: "Playstation", PaymentTime: "1:00am", Price: "$99")]
        VStack(spacing:4){
            HStack(){
                Text("$")
                    .padding(.bottom)
                Text("25,685")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(".55")
                    .padding(.bottom)
                
                Spacer()
                Image(systemName: "bell")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                Image(systemName: "ellipsis")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding()
            
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
                Text("$175.90")
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
        
    }
}

#Preview {
    Spendingview()
}
