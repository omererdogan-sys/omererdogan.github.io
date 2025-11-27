import SwiftUI

struct ContentView: View {
    let a=["Istanbul","Doha", "Dubai","Riyadh", "Kuala Lumpur"]
    
    var body: some View {
        Text("Clock/List")
            .font(.title)
        ForEach(a, id:\.self){ city in
            Text(city)
        }
    }
}
