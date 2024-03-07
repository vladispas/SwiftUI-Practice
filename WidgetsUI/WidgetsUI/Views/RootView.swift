//
//  RootView.swift
//  WidgetsUI
//
//  Created by Vlad Ispas on 07.03.2024.
//

import SwiftUI

struct RootView: View {
    
    let widgets: [Widget] = [
        Widget(name: "Water balance")
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(widgets) { widget in
                    NavigationLink {
                        WidgetView(widget: widget)
                    } label: {
                        Text(widget.name)
                    }
                }
                .navigationTitle("All Widgets")
            }
        }
    }
    
}

#Preview {
    RootView()
}
