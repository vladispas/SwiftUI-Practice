//
//  RootView.swift
//  Insurance
//
//  Created by Vlad Ispas on 14.03.2024.
//

import SwiftUI

struct RootView: View {
    
    @State private var showDashboard: Bool = false
    
    var body: some View {
        if showDashboard {
            MainView(showDashboard: $showDashboard)
        } else {
            AuthView(showDashboard: $showDashboard)
        }
    }
    
}

#Preview {
    RootView()
}
