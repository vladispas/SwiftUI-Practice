//
//  WaterBalanceGaugeView.swift
//  WidgetsExtension
//
//  Created by Vlad Ispas on 07.03.2024.
//

import SwiftUI

struct WaterBalanceGaugeView: View {
    
    let currentValue: Double
    let maxValue: Double
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                let size = min(geometry.size.width, geometry.size.height)
                let center = CGPoint(x: size / 2, y: size / 2)
                let radius = size / 3.7
                let startAngle = Angle(degrees: -90)
                let progress = CGFloat(currentValue / maxValue)
                let currentAngle = Angle(degrees: Double(progress) * 270)
                
                ZStack {
                    Path { path in
                        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: currentAngle, clockwise: false)
                    }
                    .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
                    .foregroundColor(Color.white.opacity(0.25))
                    
                    Path { path in
                        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: currentAngle, clockwise: false)
                    }
                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .foregroundColor(.white)
                }
            }
            
            Text("\(String(format: "%.0f", currentValue * 100 / maxValue))%")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.white)
        }
    }
    
}
