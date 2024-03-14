//
//  MainView.swift
//  Insurance
//
//  Created by Vlad Ispas on 14.03.2024.
//

import SwiftUI

struct MainView: View {
    
    @Binding var showDashboard: Bool
    
    var body: some View {
        DashboardView()
    }
    
}

#Preview {
    MainView(showDashboard: .constant(true))
}
