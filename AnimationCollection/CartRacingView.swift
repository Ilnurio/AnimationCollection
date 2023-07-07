//
//  CartRacingView.swift
//  AnimationCollection
//
//  Created by Ilnur on 07.07.2023.
//

import SwiftUI

struct CartRacingView: View {
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                VStack {
                    Image(systemName: "cart.fill")
                        .font(.title)
                        .foregroundColor(.red)
                    Text("Default")
                }
            }
            
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
        .padding()
    }
}

struct CartRacingView_Previews: PreviewProvider {
    static var previews: some View {
        CartRacingView()
    }
}
