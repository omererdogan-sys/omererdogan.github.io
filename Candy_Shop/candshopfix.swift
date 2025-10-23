Fixes were made by AI after the code was written(spacing, paranthesis as my swift had problems and syntax(minor mostly if not all(concentration)))
import SwiftUI

struct ContentView: View {

    @State var chocS = 12
    @State var gummS = 14
    @State var lollS = 12
    @State var caraS = 18

    @State var totalS = 56

    @State var choP = 5
    @State var gumP = 3
    @State var lolP = 1
    @State var carS = 2
    @State var minutes = 2
    @State var cb = 2
    @State var gb = 2
    @State var lb = 2
    @State var cab = 2
    @State var a: Bool = false
    @State var totalp: Int = 0

    @State var tcp = 0
    @State var tgp = 0
    @State var tlp = 0
    @State var tap = 0

    var body: some View {
        VStack {
            Text("Your UI goes here") // placeholder
        }
    }

    func restock() {
        if totalS <= 10 {
            print("Restock Reminder - Total left: \(totalS)")
        }
    }

    func stock() {
        totalS = carS + chocS + gummS + lollS
    }

    func report() {
        totalp = tap * 2 + tcp * 5 + tgp * 3 + tlp
        if minutes == 60 {
            print("Sold — Choc: \(tcp) Gummy: \(tgp) Lolly: \(tlp) Carm: \(tap)")
            print("Left — Choc: \(chocS) Gummy: \(gummS) Lolly: \(lollS) Carm: \(caraS)")
            print("Restock Alert — Choc: \(chocS) Gummy: \(gummS) Lolly: \(lollS) Carm: \(caraS)")
        }
    }

    func restoxk() {
        if totalS <= 10 {
            print("Restock Reminder - Total left: \(totalS)")
        }
    }

    func bestseller() {
        if gummS > chocS && gummS > lollS && gummS > caraS {
            print("High: \(gummS)")
        } else if chocS > gummS && chocS > lollS && chocS > caraS {
            print("High: \(chocS)")
        } else if lollS > chocS && lollS > gummS && lollS > caraS {
            print("High: \(lollS)")
        } else if caraS > chocS && caraS > lollS && caraS > gummS {
            print("High: \(caraS)")
        }
    }

    func lowestStock() {
        if gummS < chocS && gummS < lollS && gummS < caraS {
            print("Low: \(gummS)")
        } else if chocS < gummS && chocS < lollS && chocS < caraS {
            print("Low: \(chocS)")
        } else if lollS < chocS && lollS < gummS && lollS < caraS {
            print("Low: \(lollS)")
        } else if caraS < chocS && caraS < lollS && caraS < gummS {
            print("Low: \(caraS)")
        }
    }
}
