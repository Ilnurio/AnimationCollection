//
//  GradientRectangles.swift
//  AnimationCollection
//
//  Created by Ilnur on 07.07.2023.
//

import SwiftUI

struct GradientRectangles: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: .bottomLeading,
                                endPoint: .topLeading
                            )
                        )
                    .rotationEffect(.degrees(Double(iteration) * 60))
                    .frame(width: width * 0.7, height: height * 0.7)
                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
        }
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
            .frame(width: 200, height: 200)
    }
}
