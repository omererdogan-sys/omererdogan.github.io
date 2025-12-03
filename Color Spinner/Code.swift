import SwiftUI

struct ContentView: View {
    @State var b=""
    @State var c:Color = .gray
    
    var body: some View {
        VStack{
             Text("Color Spinner")
             Rectangle()
                .overlay(Text(b))
                .frame(width:200, height:200)
                .foregroundColor(c)
            
            Button("Spin"){
                 c=spin()
                 b=aa()
            
            }
            
        }
    
        
            
        }
    }
func spin()-> Color {

    let a=["Purple","Blue","Orange"]
    let rn=Int.random(in: 1...3)
    if rn==1{
        
        return .blue
    }
    else{
        if rn==2{
            
            return .orange
        }
        else{
            
            return .purple
    
        }
    }
}
func aa() -> String {
    
    let a=["Purple","Blue","Orange"]
    let rn=Int.random(in: 1...3)
    if rn==1{
        return a[1]
        
    }
    else{
        if rn==2{
            return a[2]
            
        }
        else{
            return a[0]
        }
    }
}
