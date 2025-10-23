import SwiftUI
struct ContentView: View {
    
    var body: some View {
        @State var chocS=12
        @State var gummS=14
        @State var lollS=12
        @State var caraS=18
        
        @State var totalS=56
        
        
        @State var choP=5
        @State var gumP=3
        @State var lolP=1
        @State var carS=2
        let startTime = Date()
		let elapsedTime = Date().timeIntervalSince(startTime)
		let minutes = elapsedTime / 60.0
        @State var cb=2
        @State var gb=2
        @State var lb=2
        @State var cab=2
        @State var a:Boolean=false
        @State var totalp:Int=0
        
        @State var tcp=0
        @State var tgp=0
        @State var tlp=0
        @State var tap=0

        for a in minutes<=60{
            if minutes%2==0 || minutes%3==0 || minutes%5=0 {
                if minutes%2==0 && a=false{
                TextField("Enter gummy amount to buy",gb)
                    a=true
		tgp+=gb
                gummS-=gb
                
            }
                else if minutes%3==0 && a=false{
                    TextField("Enter lollypop amount to buy",lb)
                    a=true
tlp+=lb
                    lollS-=lb
                }
                else if minutes%5==0 && chocS>0 && a=false{
                    TextField("Enter chocolate amount to buy",cb)
                    a=true
		tcp+=cb
                    chocS-=cb
                }
                else if minutes%5==0 && chocS==0 && a=false{
                    TextField("Enter caramel amount to buy",cab)
                    a=true
		tap=cab
                    carS-=cab
            
            }
stock()
restoxk()
bestseller()
Report()
                }
            a=false
            func restock(){
                if totalS<=10{
                    print("Restock Reminder-Total left:\totalS")
                }
            }
            func stock() {
                carS=Int(carS)
                chocS=Int(chocS)
                gummS=Int(gummS)
                lollS=Int(lollS)
                
                totalS=carS+chocS+gummS+lollS
            }
            func report(){
                tap=Int(tap)
                tcp=Int(tcp)
                tgp=Int(tgp)
                tlp=Int(tlp)
                totalp=tap*2+tcp*5+tgp*3+tlp
                if minutes=60{
    print(“Sold — Choc:\tcp Gummy:\tgp Lolly:\tlp Carm:\tcp”)}
   print(“Left — Choc:\chocS Gummy:\gummS Lolly:\lollP Carm:\tcp”)}
  print(“Restoxk Alert — Choc:\chocS Gummy:\gummS Lolly:\lollP Carm:\tcp”)}
If gummS< chocS && gummS<lollS && gummS<caraS{
     Print(“Low :\gummS”)
Else if chocS< gummS && chocS<lollS && chocS
<caraS{
     Print(“Low :\ChocS”)
If lollS< chocS && lollS<gummS && lollS<caraS{
     Print(“Low :\lollS”)
If caraS< chocS && caraS<lollS && caraS<gummS{
     Print(“Low :\caraS”)

func restoxk(){
                   if totalS<=10{
                         print("Restock Reminder-Total left:\totalS")}

fun bestseller(){
If gummS>chocS && gummS>lollS && gummS>caraS{
     Print(“High :\gummS”)
Else if chocS>gummS && chocS>lollS && chocS
>caraS{
     Print(“High :\ChocS”)
If lollS> chocS && lollS>gummS && lollS>caraS{
     Print(“High :\lollS”)
If caraS> chocS && caraS>lollS && caraS>gummS{
     Print(“High :\caraS”)
}




                    
                
            }
        }
        
        
    }
}
