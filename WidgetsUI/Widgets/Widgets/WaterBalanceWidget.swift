//
//  WaterBalanceWidget.swift
//  WidgetsExtension
//
//  Created by Vlad Ispas on 07.03.2024.
//

import WidgetKit
import SwiftUI

struct WaterBalanceProvider: TimelineProvider {
    
    func placeholder(in context: Context) -> WaterBalanceEntry {
        WaterBalanceEntry(date: Date(), currentWaterValue: 2.1, maxWaterValue: 2.5)
    }
    
    func getSnapshot(in context: Context, completion: @escaping (WaterBalanceEntry) -> Void) {
        let entry = WaterBalanceEntry(date: Date(), currentWaterValue: 2.1, maxWaterValue: 2.5)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<WaterBalanceEntry>) -> Void) {
        let entry = WaterBalanceEntry(date: Date(), currentWaterValue: 2.1, maxWaterValue: 2.5)
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
    
}

struct WaterBalanceEntry: TimelineEntry {
    
    let date: Date
    let currentWaterValue: Double
    let maxWaterValue: Double
    
}

struct WaterBalanceView: View {
    
    let entry: WaterBalanceProvider.Entry
    
    var body: some View {
        ZStack {
            WaterBalanceGaugeView(currentValue: entry.currentWaterValue, maxValue: entry.maxWaterValue)
            
            VStack {
                Text("Water balance")
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                Spacer()
                
                HStack(alignment: .firstTextBaseline, spacing: 3) {
                    Text("\(String(format: "%.1f", entry.currentWaterValue)) L")
                        .foregroundStyle(.white)
                        .font(.system(size: 12, weight: .semibold))
                    
                    Text("of \(String(format: "%.1f", entry.maxWaterValue)) L")
                        .foregroundStyle(.white.opacity(0.5))
                        .font(.system(size: 8, weight: .semibold))
                }
            }
        }
    }
    
}

struct WaterBalanceWidget: Widget {
    
    let kind: String = "WaterBalanceWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: WaterBalanceProvider()) { entry in
            WaterBalanceView(entry: entry)
                .containerBackground(.blue.gradient, for: .widget)
        }
        .supportedFamilies([.systemSmall])
        .configurationDisplayName("Water balance")
        .description("Check out your water balance throughout the day!")
    }
    
}

#Preview(as: .systemSmall) {
    WaterBalanceWidget()
} timeline: {
    WaterBalanceEntry(date: Date(), currentWaterValue: 2.1, maxWaterValue: 2.5)
}
