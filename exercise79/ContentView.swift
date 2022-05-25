//
//  ContentView.swift
//  exercise79
//
//  Created by Nail Kamilov on 22.05.2022.
//

import SwiftUI
import AVKit

struct ContentView: View {
    let videoNames = ["video1", "video2", "video3"]
//    let someNames = ["First", "Second", "Third"]
    let index: Int
    
    var body: some View {
        VStack {
            TabView {
                welcomeScreen(someNames: videoNames[index])
                secondSreen()
                thirdSrcreen()
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(
                    PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct welcomeScreen: View {
    let someNames: String
    let interval: TimeInterval = 30
    var body: some View {
        GeometryReader { geometry in
            VStack {
                if let url = Bundle.main.url(forResource: someNames, withExtension: "mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geometry.size.height * 0.45)
                        .padding(.bottom)
                        .tabItem{ Text("WELCOME") }
                } else {
                    Text("Couldn't find \(someNames).mp4")
                        .foregroundColor(.yellow)
                }
                VStack {
                    Text(someNames)
                        .font(.largeTitle)
                    HStack {
                        Image(systemName: "1.circle")
                        Image(systemName: "2.circle")
                        Image(systemName: "3.circle")
                        Image(systemName: "4.circle")
                    }.font(.title)
                    Text(Date().addingTimeInterval(interval), style: .timer)
                        .font(.system(size: 90))
                }
            }
        }
    }
}

struct secondSreen: View {
    var body: some View {
        Text("Second Video")
            .tabItem{ Text("Second Video") }
    }
}

struct thirdSrcreen: View {
    var body: some View {
        Text("Third video")
            .tabItem{ Text("Third Video") }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(index: 0)
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.portrait)
            .preferredColorScheme(.dark)
    }
}
