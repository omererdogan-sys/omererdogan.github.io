import SwiftUI

struct ContentView: View {
    @State var ab:Int=0
    @State var ba:Int=0
    @State var hours:Int=0
    @State var MinSeg:Int=0
    
    
    var body: some View {
        Text("Hours: \(hours)")
        ZStack{
            Circle()
                .frame(width:252)
            Circle()
                .foregroundColor(hours < 12 ? .black : .yellow)
                .frame(width: 250)
                .onTapGesture{
                    MinSeg+=1
                    if hours==24{
                        hours=0
                        ab=0
                        ba=0
                    }
                    if MinSeg==1{
                        ab=90
                        ba+=Int(7.5)
                    }
                    else if MinSeg==2{
                        ab=180
                        ba+=Int(7.5)
                    }
                    else if MinSeg==3{
                        ab=270
                        ba+=Int(7.5)
                    }
                    else if MinSeg==4{
                        ab=0
                        MinSeg=0
                        self.ab = 0
                        hours+=Int(1)
                        ba+=Int(7.5)
                    }
                    
                }
            Circle()
                .frame(width:230)
                .offset(x:-16)
                .foregroundColor(hours < 12 ? .black : .black)
            Rectangle()
                .frame(width: 3, height:25)
                .foregroundColor(hours < 12 ? .black : .yellow)
            Rectangle()
                .frame(width: 25, height:3)
                .foregroundColor(hours < 12 ? .black : .yellow)
                .offset(x:125)         
            Rectangle()
                .frame(width: 3, height:25)
                .foregroundColor(hours < 12 ? .black : .yellow)
                .offset()
            Rectangle()
                .frame(width: 25, height:3)
                .foregroundColor(hours < 12 ? .black : .yellow)
            Rectangle()
                .frame(width: 3, height:250)
                .foregroundColor(hours < 12 ? .white : .black)
            Rectangle()
                .frame(width: 250, height:3)
                .foregroundColor(hours < 12 ? .white : .black)
            Text("45")
                .offset(x:135)
                .foregroundColor(hours < 12 ? .white : .black)
            Text("45")
                .offset(x:-135)
                .foregroundColor(hours < 12 ? .white : .black)
            Text("45")
                .offset(y:135)
                .foregroundColor(hours < 12 ? .white : .black)
            Text("45")
                .offset(y:-135)
                .foregroundColor(hours < 12 ? .white : .black)
            
            
            
            Rectangle()
                .frame(width: 5, height: 120)
                .foregroundColor(.brown)
                .rotationEffect(.degrees(Double(ab)),anchor: .bottom)
                .offset(y:-60)
            Rectangle()
                .frame(width: 10, height: 100)
                .foregroundColor(.brown)
                .rotationEffect(.degrees(Double(ba)), anchor: .bottom)
                .offset(y:-50)
            Circle()
                .foregroundColor(.black)
                .frame(width:11)
            
            
        }
    }
}

