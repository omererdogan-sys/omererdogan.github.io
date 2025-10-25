To be Fixed
 import SwiftUI

struct ContentView: View {
    @State private var secondsElapsed = 0
    @State var temp:Int=20
    let timer = Timer.publish(every: 1, on: .main, in:
            .common).autoconnect()
    var minutesElapsed: Int {
        secondsElapsed / 60
        var body: some View {
            func hcm(){
                for _ in minutesElapsed...60{
                    temp+=5
                    if temp<50{
                        print("Minute:\(minuteElapsed) --> the drink is still cold.")
                    }
                    else if 50<temp<70{
                        print("Minute:\(minuteElapsed) --> the drink is ready to serve!")
                        }
                    else if 70<temp<85{
                        print("Minute:\(minuteElapsed) --> Too hot! Wait before drinking")
                        }
                    else if 85<temp{
                        print("Minute:\(minuteElapsed) --> ⚠ Machine auto-stop activated!")
                        print("Total temprature change:65C*")
                        break
                        }
                    }
                }
                hcm()
            }
        }
    }
