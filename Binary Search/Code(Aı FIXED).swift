import SwiftUI

struct ContentView: View {

    @State var database = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
    @State var b: String = ""

    var body: some View {
        VStack {
            TextField("Enter a number", text: $b)

            Button("Run") {
                for _ in 0..<11 {
                    if let bInt = Int(b), !database.isEmpty {
                        let i = abc(a: database.count)
                        if database[i] != bInt {
                            database.remove(at: i)
                        }
                    }
                }
            }

            ForEach(database, id: \.self) { _ in
                Text("")
            }
        }
    }
}

func abc(a: Int) -> Int {
    Int.random(in: 0..<a)
}
