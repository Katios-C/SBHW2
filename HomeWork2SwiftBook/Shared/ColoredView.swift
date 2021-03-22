//
//  ColoredView.swift
//  HomeWork2SwiftBook (iOS)
//
//  Created by Екатерина Чернова on 08.02.2021.
//

import SwiftUI

struct ColoredView: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        Color(red: red, green: green, blue: blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .frame(width: 350, height: 150)
            .padding(4)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
          
        
    }
    
}


