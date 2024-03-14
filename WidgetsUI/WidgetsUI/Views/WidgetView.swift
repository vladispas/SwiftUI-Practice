//
//  WidgetView.swift
//  WidgetsUI
//
//  Created by Vlad Ispas on 07.03.2024.
//

import SwiftUI

struct WidgetView: View {
    
    let widget: Widget
    
    var body: some View {
        VStack(spacing: 32) {
            ZStack {
                Rectangle()
                    .foregroundStyle(.blue.gradient)
                
                WaterBalanceGaugeView(currentValue: 2.1, maxValue: 2.5)
                    .frame(width: 170 / 1.3, height: 170 / 1.3)
                
                VStack {
                    Text("Water balance")
                        .font(.caption2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    HStack(alignment: .firstTextBaseline, spacing: 3) {
                        Text("2.1 L")
                            .foregroundStyle(.white)
                            .font(.system(size: 12, weight: .semibold))
                        
                        Text("of 2.5 L")
                            .foregroundStyle(.white.opacity(0.5))
                            .font(.system(size: 8, weight: .semibold))
                    }
                }
                .padding(16)
            }
            .frame(width: 170, height: 170)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            
            VStack(spacing: 8) {
                Text("This widget was created by **@mishacreator**")
                    .font(.system(size: 16))
                
                HStack(alignment: .firstTextBaseline) {
                    Image(systemName: "person.fill")
                        .font(.system(size: 16))
                    
                    Text("[@mishacreator](https://twitter.com/mishacreator)")
                        .font(.system(size: 16, weight: .semibold))
                }
                
                HStack(alignment: .firstTextBaseline) {
                    Image(systemName: "pencil")
                        .font(.system(size: 16))
                    
                    Text("[Design](https://layers.to/layers/clsx774mf000rl50crsnemr23)")
                        .font(.system(size: 16, weight: .semibold))
                }
            }
                
        }
        .navigationTitle(widget.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    WidgetView(widget: Widget(name: "Water balance"))
}
