import SwiftUI
// This draws the cone (don’t change this)
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.closeSubpath()
        return path
    }
}
struct ContentView: View {
    @State private var scoop1: Color? = nil
    @State private var scoop2: Color? = nil
    @State private var scoop3: Color? = nil
    @State private var scoop4: Color? = nil
    @State private var scoop5: Color? = nil
    @State private var scoopn: Int=0
    var body: some View {
        VStack {
            // Ice cream cone
            ZStack {
                Circle()
                    .frame(width:70)
                    .offset(x:20,y:-80)
                    .foregroundColor(scoop1)
                Circle()
                    .frame(width:70)
                    .offset(x:-20,y:-80)
                    .foregroundColor(scoop2)
                Circle()
                    .frame(width:70)
                    .offset(x:-15,y:-120)
                    .foregroundColor(scoop3)
                Circle()
                    .frame(width:70)
                    .offset(x:15,y:-120)
                    .foregroundColor(scoop4)
                Circle()
                    .frame(width:70)
                    .offset(y:-155)
                    .foregroundColor(scoop5)
            
                
                Triangle()
                    .fill(.brown)
                    .frame(width: 120, height: 150)

                // TODO: Add scoop circles here
            }
            HStack {
                Button("Add Scoop") {
                    scoopn+=1
                    if scoopn==1 {
                        scoop1=Color(.pink)
                    }
                    else if scoopn==2 {
                        scoop2=Color(.green)
                    }
                    else if scoopn==3 {
                        scoop3=Color(.blue)
                    }
                    else if scoopn==4 {
                        scoop4=Color(.purple)
                    }
                    else if scoopn==5 {
                        scoop5=Color(.yellow)
                    }
                    else if scoopn==6 {
                        scoop1=nil
                        scoop2=nil
                        scoop3=nil
                        scoop4=nil
                        scoop5=nil
                        scoopn=0
                        }
                
                }
                Button("Reset") {
                    scoop1=nil
                    scoop2=nil
                    scoop3=nil
                    scoop4=nil
                    scoop5=nil
                    scoopn=0
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
