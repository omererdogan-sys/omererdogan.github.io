import SwiftUI
struct ContentView: View {
    let la=["Red", "Purple", "Blue", "Green"]
    let lb=[0, 1, 2, 3 ]
    @State var a:Int=0
    var body: some View {
        Text("Array Map V1")
            .offset(y:-20)
        ZStack{
            Rectangle()
                .foregroundColor(.red)
                .frame(width:350, height:150)
                .offset(y:-190)
            
            Rectangle()
                .foregroundColor(.purple)
                .frame(width:350, height:150)
                .offset(y:-40)
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(width:350, height:150)
                .offset(y:110)
            
            Rectangle()
                .foregroundColor(.green)
                .frame(width:350, height:150)
                .offset(y:220)
            
            VStack(spacing: 100) {
                ForEach(0..<la.count, id: \.self) { i in
                    Text("                                Select: \(la[i])                                                                                                                           Index:\(lb[i])")
                        .offset(y:-5)
                    
                }

                
                
                
                
            }
            
            
        }      
            
        
    }
}
