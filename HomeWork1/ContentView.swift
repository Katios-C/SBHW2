
import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    
    var body: some View {
        
        ZStack {
            
            Color(.black)
                
                .ignoresSafeArea()
            
            VStack {
                switch tapCount {
                case 1:
                    RedCircle()
                case 2:
                    YellowCircle()
                    
                case 3:
                    GreenCircle()
                    
                    
                default:
                    StartView()
                }
                Spacer()
                
                Button(action: {
                    tapCount += 1
                    
                    if tapCount > 0 && tapCount < 4 {
                        RedCircle()
                        
                    } else {
                        tapCount = 1
                    }
                }, label: {
                    MyButton(buttonText: tapCount == 0 ? "Start" : "next", buttonColor: .orange)
                    
                }
                
                )
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
