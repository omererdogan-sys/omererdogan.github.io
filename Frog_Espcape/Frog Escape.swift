import SwiftUI




func initialTimeForLevel(level: Int) -> Int {
        if level == 1 {
                return 20
            } else if level == 2 {
                    return 18
                } else if level == 3 {
                        return 16
                    } else if level == 4 {
                            return 14
                        } else {
                                return 8
                            }
}

func simulateLevels() {
        for level in 1...5 {
                var time = initialTimeForLevel(level: level)
                print("Level \(level) started with \(time) seconds")
                
                while time > 0 {
                        print("Time left: \(time)")
                        time -= 1
                        Thread.sleep(forTimeInterval: 0.05) // fast countdown for test
                    }
                
                print("TIME UP! Restarting clock...\n")
            }
}
struct ContentView: View {
        @State private var level = 1
        @State private var time = 20
        @State private var playerX: CGFloat = 0
        @State private var goalX: CGFloat = CGFloat.random(in: -150...150)
        @State private var obstacleY: CGFloat = 300
        @State private var gameOver = false
        @State private var levelUp = false
    
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
        var body: some View {
            ZStack{
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 125)
                Rectangle()
                    .frame(width: 5, height: 55)
                    .foregroundColor(.black)
                    .rotationEffect(.degrees(Double(-6*time)),anchor: .bottom)
                    .offset(y:-30)
                Circle()
                    .foregroundColor(.black)
                    .frame(width:11)
        }
                VStack {
            
                
                
            
                        Text("Level \(level)").font(.title)
                        Text("Time: \(time)").font(.headline)
                        
                        ZStack {
                                // Player (green)
                                Circle()
                                    .fill(.green)
                                    .frame(width: 40, height: 40)
                                    .offset(x: playerX, y: 100)
                
                                // Obstacle (red)
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 40, height: 40)
                                    .offset(x: 0, y: obstacleY)
                
                                // Goal (blue)
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 30, height: 30)
                                    .offset(x: goalX, y: 100)
                            }
                        .frame(height: 300)
            
                        HStack {
                                Button("Left") {
                                        playerX -= 20
                                    }
                                Button("Right") {
                                        playerX += 20
                                    }
                            }
            
                        if gameOver {
                                Text("Game Over!")
                                    .foregroundColor(.red)
                                    .font(.largeTitle)
                                Button("Restart") {
                                        restartGame()
                                    }
                            }
            
                        if levelUp {
                                Text("Level Up!")
                                    .foregroundColor(.blue)
                                    .font(.title)
                            }
                    }
                .padding()
                .onReceive(timer) { _ in
                        if !gameOver {
                                if time > 0 {
                                        time -= 1
                                        obstacleY -= 10
                                        

                                        if abs(playerX) < 30 && obstacleY < 140 && obstacleY > 60 {
                                                gameOver = true
                                            }
                    

                                        if abs(playerX - goalX) < 25 {
                                                nextLevel()
                                            }
                    
                                    } else {
                                            gameOver = true
                                        }
                            }
                    }
            }
    

        func initialTimeForLevel(level: Int) -> Int {
                if level == 1 {
                        return 20
                    } else if level == 2 {
                            return 18
                        } else if level == 3 {
                                return 16
                            } else if level == 4 {
                                    return 14
                                } else {
                                        return 8
                                    }
            }
    

        func nextLevel() {
                level += 1
                time = initialTimeForLevel(level: level)
                playerX = 0
                goalX = CGFloat.random(in: -150...150)
                obstacleY = 300
                levelUp = true
        

                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        levelUp = false
                    }
            }
    

        func restartGame() {
                level = 1
                time = initialTimeForLevel(level: level)
                playerX = 0
                goalX = CGFloat.random(in: -150...150)
                obstacleY = 300
                gameOver = false
                levelUp = false
            }
}


