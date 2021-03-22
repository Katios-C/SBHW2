
import SwiftUI

struct ContentView: View {
    
    
    @State private var sliderValue1 = Double.random(in: 0...1)
    @State private var sliderValue2 = Double.random(in: 0...1)
    @State private var sliderValue3 = Double.random(in: 0...1)
    
    
    var body: some View {
        
        
        ZStack {
            Color(.systemYellow)
                .ignoresSafeArea()
            
            VStack {
                ColoredView(red: $sliderValue1, green: $sliderValue2, blue: $sliderValue3)
                
                OneSliderView(value: $sliderValue1)
                OneSliderView(value: $sliderValue2)
                OneSliderView(value: $sliderValue3)
                
                Spacer()
            }
            .padding()
        }
    }
}

