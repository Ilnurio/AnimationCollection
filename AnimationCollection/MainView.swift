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
                HStack {
                    if awardIsShowing {
                        Text("Hide Award")
                        Image(systemName: "chevron.up.square")
                    } else {
                        Text("Show Award")
                        Image(systemName: "chevron.down.square")
                    }
                }
            }
            
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
