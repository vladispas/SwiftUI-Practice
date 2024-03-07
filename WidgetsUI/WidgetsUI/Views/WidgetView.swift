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
        Text("You selected \(widget.name)")
            .navigationTitle(widget.name)
            .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    WidgetView(widget: Widget(name: "Water balance"))
}
