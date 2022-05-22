//
//  ContentView.swift
//  exercise79
//
//  Created by Nail Kamilov on 22.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ExtractedView()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
            Image(systemName: "4.circle")
        }.font(.largeTitle)
    }
}
