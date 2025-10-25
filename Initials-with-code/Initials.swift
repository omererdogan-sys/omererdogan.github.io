import SwiftUI

struct ContentView: View {
        var body: some View {
                ZStack {
                        ForEach(1...10, id: \.self) { i in
                                VStack {
                                        Circle()
                                            .frame(width: 15)
                        .offset(x: CGFloat(i*20-20), y:180)
                                    }
                            }
            .offset(x:-150)
            
                        ForEach(1...10, id: \.self) { i in
                                HStack {
                                        Circle()
                                            .frame(width: 15)
                                    .offset(x:180, y: CGFloat(i*20-20))
                    
                                    }
                            }
            .offset(x:-150)
            
                        ForEach(1...10, id: \.self) { i in
                                VStack {
                                        Circle()
                                            .frame(width: 15)
                                            .offset(x: CGFloat(i*20-20))
                                    }
                            }
            .offset(x:-150)
            
                        ForEach(1...10, id: \.self) { i in
                                HStack {
                                        Circle()
                                            .frame(width: 15)
                                            .offset(y: CGFloat(i*20-20))
                                    }
                            }
            .offset(x:-150)
            ForEach(1...10, id: \.self) { i in
                VStack {
                    Circle()
                        .frame(width: 15)
                        .offset(y: CGFloat(i*20))
                                    }
                            }
            .offset (x:100, y:-20)
            ForEach(1...10, id: \.self) { i in
                HStack {
                    Circle()
                        .frame(width: 15)
                        .offset(x: CGFloat(i*20))
                                    }
                            }
            .offset(x:80)
            ForEach(1...10, id: \.self) { i in
                HStack {
                    Circle()
                        .frame(width: 15)
                        .offset(x: CGFloat(i*20))
                                    }
                            }
            .offset(x:80,y:80)
            ForEach(1...10, id: \.self) { i in
                HStack {
                    Circle()
                        .frame(width: 15)
                        .offset(x: CGFloat(i*20))
                                    }
                            }
            .offset(x:80, y:180)
            
                    }
            }
}




