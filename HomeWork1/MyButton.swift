
import SwiftUI

struct MyButton: View {
    var buttonText = "Button"
    var buttonColor = Color("RedColor")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 150, height: 55)
                .foregroundColor(Color(.orange))
                .padding(.bottom, 5)
            Text(buttonText).bold()
        }
    }
}
struct Button_Previews: PreviewProvider {
    static var previews: some View {
        MyButton()
    }
}
