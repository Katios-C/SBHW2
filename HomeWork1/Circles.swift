//
//  RedCircle.swift
//  HomeWork1
//
//  Created by Екатерина Чернова on 04.02.2021.
//

import SwiftUI

struct Circles: View {
    var body: some View {
        VStack {
            Color(.red)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            Color(.yellow)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            
            Color(.green)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(radius: 10)
        }
    

    }
}

struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        Circles()
    }
}
