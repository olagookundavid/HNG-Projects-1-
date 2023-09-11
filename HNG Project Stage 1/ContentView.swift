//
//  ContentView.swift
//  HNG Project Stage 1
//
//  Created by David OH on 08/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack( spacing:30) {
                Image("me")
                    .resizable()
                    .frame(maxWidth: .infinity,maxHeight: 350)
                    .cornerRadius(10)
                Text("I am David OH")
                    .font(.title)
                    .bold()
                    .foregroundColor(.gray)
                Text("Mobile Developer with experience building with SwiftUI and Flutter. Speaker and Communities focused.")
                    .multilineTextAlignment(.center)
                    .fontWeight(.semibold)
                    .font(.body)
                    .padding(.top,10)
                NavigationLink {
                    WebView(url: URL(string: "https://github.com/olagookundavid")!)
                } label: {
                    PrimaryButton(text: "Checkout my GitHub")
                        .padding(.top,50)
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

