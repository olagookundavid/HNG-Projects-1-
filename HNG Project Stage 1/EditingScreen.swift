//
//  EditingScreen.swift
//  HNG Project Stage 1
//
//  Created by David OH on 11/09/2023.
//

import SwiftUI

struct EditingScreen: View {
    @Binding var fullName: String
    @Binding var slackName: String
    @Binding var githubName: String
    @Binding var aboutMe: String
    @Environment(\.dismiss) private var dismiss
    var body: some View {
  
        VStack(alignment: .center, spacing:35){
            
            TextField("", text: $fullName).title()
            TextField("", text: $slackName) .title()
            TextField("", text: $githubName) .title()
            TextEditor(text: $aboutMe)
                .frame(height:150)
                .background(Color(.gray))
                .cornerRadius(8)
            Button {
                dismiss()
            } label: {
                PrimaryButton(text: "Done Editing")
            }
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
            .onAppear{
                UITextView.appearance().backgroundColor = .clear
            }
            .navigationBarHidden(true)
        }
}

struct EditingScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        EditingScreen(fullName: .constant(""),slackName: .constant(""),githubName: .constant(""),aboutMe: .constant(""))
    }
}
private extension EditingScreen{
    var background: some View{
        Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118)
            .ignoresSafeArea(edges:.all)
    }
}
