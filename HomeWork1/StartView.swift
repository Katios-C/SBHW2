//
//  StartView.swift
//  HomeWork1
//
//  Created by Екатерина Чернова on 04.02.2021.
//

import SwiftUI

struct StartView: View {
    var body: some View {
    VStack {
    Color(.red)
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .shadow(radius: 10)
        .overlay(Circle().stroke(Color.white, lineWidth: 3))
        
    
    Color(.yellow)
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .shadow(radius: 10)
        .overlay(Circle().stroke(Color.white, lineWidth: 3))
       
    
    Color(.green)
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .shadow(radius: 10)
        .overlay(Circle().stroke(Color.white, lineWidth: 3))
        
    }
    .padding(.top, 30)
}
}
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
