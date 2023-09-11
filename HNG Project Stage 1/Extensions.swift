//
//  Extensions.swift
//  HNG Project Stage 1
//
//  Created by David OH on 11/09/2023.
//

import Foundation

import SwiftUI

extension TextField {
    func title() -> some View{
        self
            .padding(.all)
            .background(Color(red: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, opacity: 0.7))
            .cornerRadius(8)
    }
}

