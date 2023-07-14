//
//  ContentView.swift
//  AnimationCollection
//
//  Created by Ilnur on 07.07.2023.
//

import SwiftUI

struct ContentView: View {
    var start = false
    
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "pawprint.fill")
                    Text("My Award")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Awards")
                }
            CartRacingView()
            .tabItem {
                Image(systemName: "cart")
                Text("CartRacing")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
