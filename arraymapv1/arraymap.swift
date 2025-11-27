import SwiftUI

struct ContentView: View {
    let s=["Basketball","Football","Bandington","Fishing"]
    var body: some View {
        VStack {
            Text("Array Map")
            ForEach(0..<s.count, id: \.self) { i in
                Rectangle()
                    .frame(width:400, height:50)
                    .opacity(0.5)
                    .overlay(Text("                                                               \(s[i])"))
                    .overlay(Text("Index: \(i)").offset(x:-150))
            }
        }
    }
}
