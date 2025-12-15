import SwiftUI

struct ContentView: View {
    @State var replacer:Int=0
    @State var items:[Int]=[]
    @State var number:Int=0
    @State var an:Int=0
    @State var c:Color=(.gray)
    var body: some View {
        VStack{
            TextField("Enter a number 1-100",value:$an, format: .number)
            Button("Add"){
                if number<=5{
                    items.append(an)
                    number+=1
                }
                else {
                    items[replacer]=an
                    replacer=(replacer+1)%5
                }
            }
            HStack {
                ForEach(1...10, id: \.self) { i in
                    
                    VStack{
                    Rectangle()
                        .opacity(0.75)
                        .frame(width:30, height:20)
                        .overlay(Text("\(i)").foregroundColor(.white))
                        .foregroundColor(items.contains(i) ? .red : .gray)
                
                        
                        ForEach(1...9, id: \.self) { b in
                            Rectangle()
                                .foregroundColor(items.contains(b*10+i) ? .red : .gray)
                                .opacity(0.75)
                                .frame(width:30, height:20)
                                .overlay(Text("\(b*10+i)"))
                                
                            
                        
                                         }
                    }
                }
            }
        }
    }
}
