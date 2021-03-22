//
//  Slider.swift
//  HomeWork2SwiftBook (iOS)
//
//  Created by Екатерина Чернова on 08.02.2021.
//

import SwiftUI

struct OneSliderView: View {
    
    @Binding var value: Double
    @State  var sliderValueTextInput = ""
   // @State var textColor = Color(.yellow)
    @State var showAlert = false
    
    
    var body: some View {
        
        HStack {
            
            Text("\(value)")
                .fontWeight(.bold)
                .frame(height: 60)
            
            Slider(value: $value, in: 0 ... 1)
            
            TextField("\(value)", text: $sliderValueTextInput, onCommit:  {
                validation()
                
            }
            
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Wrong format! main"), message: Text("Enter double from 0 to 1"))
            }
            .background(Color.white)
            
        }
        
    }
    private func validation() {
        if let _ = Double(sliderValueTextInput) {
            
            if  Double(sliderValueTextInput)! > 0 && Double(sliderValueTextInput)! < 1 {
                value = Double(sliderValueTextInput) ?? 0
                sliderValueTextInput = ""
            }
            else {
                
                sliderValueTextInput = ""
                showAlert = true
                return
            }
        }
        else {
            sliderValueTextInput = ""
            showAlert = true
            return
            
        }
        
    }
    
}

