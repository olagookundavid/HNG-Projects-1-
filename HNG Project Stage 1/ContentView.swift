//
//  ContentView.swift
//  HNG Project Stage 1
//
//  Created by David OH on 08/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var fullName = "Olagookun David"
    @State private var slackName = "David OH"
    @State private var githubName = "@olagookundavid"
    @State private var aboutMe = "Mobile Developer with experience building with SwiftUI and Flutter. Speaker and Communities focused."
    var body: some View {
        NavigationStack {
          
                Form {
                    Section(header: Text("Full Name")) {
                        Text(fullName)
                    }.headerProminence(.increased)
                    
                    Section(header: Text("Slack User Name")) {
                        Text(slackName)
                    }.headerProminence(.increased)
                    
                    Section(header: Text("GitHub Handle")) {
                        Text(githubName)
                    }.headerProminence(.increased)
                 
                    Section(header:  Text("About Me")) {
                            Text(aboutMe)
                                .multilineTextAlignment(.leading)
                                .fontWeight(.semibold)
                                .font(.body)
                                .padding(.top,10)
                        }.headerProminence(.increased)
                    
                }.scrollContentBackground(.hidden)
                .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
                .navigationTitle("Main Screen")
                .toolbar{
                    ToolbarItem(placement: .primaryAction){
                        NavigationLink {
                            EditingScreen(fullName: $fullName,slackName: $slackName,githubName: $githubName,aboutMe: $aboutMe)
                        } label: {
                            PrimaryButton(text: "Edit Screen")
                        }
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
private extension ContentView{
    var background: some View{
        Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118).ignoresSafeArea(edges:.top)
    }
}
