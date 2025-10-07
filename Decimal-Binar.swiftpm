import SwiftUI

struct ContentView: View {
    @State private var id: String = ""
    @State private var result=""
    
    var body: some View {
        VStack{
            func f1(for target:Int) -> some View {
                ForEach(0...1, id:\.self) {a in
                    ForEach(0...1, id:\.self) {b in
                        ForEach(0...1, id:\.self) {c in
                            ForEach(0...1, id:\.self) {d in
                                result=8*a+4*b+2*c+1*d
                                if result==id{
                                    Text("Binary",a,b,c,d)
                                    Text("Decimal\(result)")
                                    HStack(20){
                                        Button(a){
                                            .frame(width:50, height:50)
                                            .foregroundColor(a == 1 ? .green : .gray) 
                                        }
                                        Button(b){
                                            .frame(width:50, height:50)
                                            .foregroundColor(b == 1 ? .green : .gray) 
                                        }
                                        Button(c){
                                            .frame(width:50, height:50)
                                            .foregroundColor(c == 1 ? .green : .gray) 
                                        }
                                        Button(d){
                                            .frame(width:50, height:50)
                                            .foregroundColor(d == 1 ? .green : .gray) 
                                        }
                                    }
                                    HStack(20){
                                        Button(a*8){
                                        }
                                        Button(b*4){
                                        }
                                        Button(c*2){
                                        }
                                        Button(d*1){
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
            TextField("Your number", text: $id)
                .foregroundColor(.gray)
                .frame(width: 200)
            f1()
            
            
            Button("+1") {    
                result+=1
                f1()
                if result=15{
                    result=0
                }
            }
            Button("Reset") {    
                result=0
                f1()
            }
            
            
        }
    }
}

