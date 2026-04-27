import SwiftUI // In swift storyboard, part of the code is written and part of it is the storyboard file. However in SwiftUI, the whole app is written in code.

struct ContentView: View { //There is no viewcontroller; there is a view struct instead which defines how the UI looks.
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    @State private var currentElementIndex = 0 //In storyboard, elements are manually updated. In SwiftUI, it automatically redraws the UI.
    @State private var answerText = "?"
    
    var body: some View {
        VStack(spacing: 20) { //Storyboard uses constraints, while SwiftUI uses layout stacks which are much simpler.
            
            Image(elementList[currentElementIndex])
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(answerText)
                .font(.largeTitle)
            
            HStack {
                
                Button("Show Answer") { //In storyboard, the elements such as buttons are connected with IBActions. However, in SwiftUI buttons contain their actions directly.
                    answerText = elementList[currentElementIndex]
                }
                .buttonStyle(.borderedProminent)
                
                Button("Next") {
                    currentElementIndex += 1
                    
                    if currentElementIndex >= elementList.count {
                        currentElementIndex = 0
                    }
                    
                    answerText = "?"
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}
#Preview (
    ContentView
)
