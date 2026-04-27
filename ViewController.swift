import SwiftUI

struct ContentView: View {
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    @State private var currentElementIndex = 0
    @State private var answerText = "?"
    
    var body: some View {
        VStack(spacing: 20) {
            
            Image(elementList[currentElementIndex])
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(answerText)
                .font(.largeTitle)
            
            HStack {
                
                Button("Show Answer") {
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

