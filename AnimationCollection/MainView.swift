//
//  MainView.swift
//  AnimationCollection
//
//  Created by Ilnur on 07.07.2023.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { awardIsShowing.toggle() }) {
                Text(awardIsShowing ? "Hide awards" : "Show Awards")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                    .animation(.default, value: awardIsShowing)
            }
            
            Spacer()
            
            GradientRectangles()
                .frame(width: 200, height: 200)
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
