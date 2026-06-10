

!!!!!This was built in the past for a seperate thing using AI as the coding tool.!!!!!























import SwiftUI

enum Screen {
    case home
    case knowledge
    case quiz
}

struct ContentView: View {
    
    @State private var currentScreen: Screen = .home
    
    var body: some View {
        switch currentScreen {
        case .home:
            homeView
        case .knowledge:
            KnowledgeView(currentScreen: $currentScreen)
        case .quiz:
            QuizView(currentScreen: $currentScreen)
        }
    }
}

extension ContentView {
    
    var homeView: some View {
        ZStack {
            
            // LEARN CARD
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: -150)
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: -150, y: 40)
            
            Button("Learn") {
                currentScreen = .knowledge
            }
            .offset(x: -150)
            
            // TEST CARD
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: 150)
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: 150, y: 40)
            
            Button("Test") {
                currentScreen = .quiz
            }
            .offset(x: 150)
        }
    }
}
import SwiftUI

enum Screen {
    case home
    case knowledge
    case quiz
}

struct ContentView: View {
    
    @State private var currentScreen: Screen = .home
    
    var body: some View {
        switch currentScreen {
        case .home:
            homeView
        case .knowledge:
            KnowledgeView(currentScreen: $currentScreen)
        case .quiz:
            QuizView(currentScreen: $currentScreen)
        }
    }
}

extension ContentView {
    
    var homeView: some View {
        ZStack {
            
            // LEARN CARD
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: -150)
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: -150, y: 40)
            
            Button("Learn") {
                currentScreen = .knowledge
            }
            .offset(x: -150)
            
            // TEST CARD
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: 150)
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth: 3))
                .frame(width: 200, height: 350)
                .offset(x: 150, y: 40)
            
            Button("Test") {
                currentScreen = .quiz
            }
            .offset(x: 150)
        }
    }
}
 import SwiftUI

struct KnowledgeView: View {
    
    @Binding var currentScreen: Screen
    
    let knowledgeList = [
        "Producing one cotton T-shirt uses about 2,700 liters of water, enough for one person to drink for over 2 years.",
        "A single toilet flush can use between 6 and 13 liters of clean drinking water.",
        "Food waste causes about 8% of global greenhouse gas emissions every year.",
        "Producing one kilogram of beef can require up to 15,000 liters of water.",
        "Plastic can take over 450 years to fully break down in nature.",
        "Recycling aluminum saves about 95% of the energy needed to make new aluminum.",
        "Turning off the tap while brushing teeth can save up to 8 liters of water each time.",
        "About 70% of the world’s freshwater is used for agriculture.",
        "Fast fashion causes around 10% of global carbon emissions.",
        "One reusable water bottle can replace hundreds of plastic bottles each year.",
        "Only about 9% of all plastic ever made has been recycled.",
        "Leaving lights on unnecessarily wastes electricity that often comes from fossil fuels.",
        "Glass can be recycled endlessly without losing quality.",
        "A leaking tap can waste more than 3,000 liters of water per year.",
        "Planting trees helps absorb carbon dioxide from the atmosphere.",
        "Producing paper from recycled material uses about 40% less energy.",
        "Transporting food long distances increases its carbon footprint.",
        "Using public transport can reduce individual carbon emissions by up to 45%.",
        "About one third of all food produced globally is wasted.",
        "Electronic waste is the fastest-growing waste stream in the world.",
        "Producing new clothes uses large amounts of water, energy, and chemicals.",
        "Using energy-efficient bulbs can reduce electricity use by up to 80%.",
        "Deforestation contributes to climate change by releasing stored carbon.",
        "Reusable bags help reduce millions of plastic bags entering oceans.",
        "Water scarcity already affects over 40% of the global population.",
        "Making recycled paper saves thousands of trees every year.",
        "Most ocean plastic comes from land-based sources.",
        "Short showers can save hundreds of liters of water each week.",
        "Reducing consumption is more effective than recycling alone.",
        "Small daily habits, repeated by millions of people, create large environmental impact."
    ]
    
    @State private var currentKnowledge = ""
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text(currentKnowledge)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Next") {
                currentKnowledge = knowledgeList.randomElement()!
            }
            
            Button("Return to Home") {
                currentScreen = .home
            }
        }
        .padding()
        .onAppear {
            currentKnowledge = knowledgeList.randomElement()!
        }
    }
}
import SwiftUI

struct QuizView: View {
    
    @Binding var currentScreen: Screen
    
    let questions: [(String, [String], Int)] = [
        ("How much water is used to make one cotton T-shirt?", ["500 L", "1,000 L", "2,700 L"], 2),
        ("What percentage of freshwater is used for agriculture?", ["30%", "50%", "70%"], 2),
        ("How long can plastic take to break down?", ["50 years", "100 years", "450+ years"], 2),
        ("Which food has the highest water footprint?", ["Vegetables", "Beef", "Grains"], 1),
        ("What percentage of plastic is recycled globally?", ["9%", "25%", "60%"], 0),
        ("What saves the most energy?", ["Recycling aluminum", "Recycling paper", "Recycling glass"], 0),
        ("How much food is wasted globally?", ["10%", "20%", "33%"], 2),
        ("Which sector uses the most water?", ["Industry", "Homes", "Agriculture"], 2),
        ("What causes about 10% of global emissions?", ["Fast fashion", "Recycling", "Public transport"], 0),
        ("Which item can be recycled endlessly?", ["Plastic", "Glass", "Paper"], 1),
        ("What happens if taps leak?", ["No effect", "Waste thousands of liters", "Only noise"], 1),
        ("What saves more water?", ["Long baths", "Short showers", "Daily car washing"], 1),
        ("Where does most ocean plastic come from?", ["Ships", "Land", "Fish"], 1),
        ("What does planting trees help reduce?", ["Oxygen", "Carbon dioxide", "Water"], 1),
        ("What saves more energy?", ["LED bulbs", "Old bulbs", "Candles"], 0),
        ("What increases carbon footprint?", ["Local food", "Seasonal food", "Long-distance transport"], 2),
        ("What is the fastest-growing waste type?", ["Food", "Plastic", "Electronic waste"], 2),
        ("Which action saves most resources?", ["Recycling", "Reducing use", "Throwing away"], 1),
        ("How much energy does recycling aluminum save?", ["30%", "60%", "95%"], 2),
        ("What uses clean drinking water?", ["Toilets", "Oceans", "Clouds"], 0),
        ("What reduces emissions by up to 45%?", ["Cars", "Public transport", "Planes"], 1),
        ("What releases carbon into the air?", ["Deforestation", "Recycling", "Gardening"], 0),
        ("What helps reduce plastic waste?", ["Reusable bags", "Single-use bags", "Burning trash"], 0),
        ("What uses more water?", ["Meat", "Vegetables", "Fruits"], 0),
        ("What percentage of emissions comes from food waste?", ["3%", "8%", "15%"], 1),
        ("What should be done first?", ["Recycle", "Reduce", "Throw away"], 1),
        ("What saves trees?", ["Recycled paper", "Plastic bags", "Metal"], 0),
        ("What wastes electricity?", ["Turning lights off", "Leaving lights on", "Daylight"], 1),
        ("What helps oceans most?", ["Less plastic use", "More fishing", "More boats"], 0),
        ("Who makes the biggest impact?", ["One person", "Millions together", "No one"], 1)
    ]
    
    @State private var currentIndex = Int.random(in: 0..<30)
    @State private var selectedAnswer: Int? = nil
    @State private var showResult = false
    
    var body: some View {
        VStack(spacing: 25) {
            
            Text(questions[currentIndex].0)
                .font(.title2)
                .multilineTextAlignment(.center)
            
            ForEach(0..<questions[currentIndex].1.count, id: \.self) { index in
                Button(questions[currentIndex].1[index]) {
                    selectedAnswer = index
                    showResult = true
                }
            }
            
            if showResult {
                Text(
                    selectedAnswer == questions[currentIndex].2 ? "Correct!" : "Wrong!"
                )
                .font(.headline)
            }
            
            Button("Next Question") {
                currentIndex = Int.random(in: 0..<questions.count)
                selectedAnswer = nil
                showResult = false
            }
            
            Button("Return to Home") {
                currentScreen = .home
            }
        }
        .padding()
    }
}

