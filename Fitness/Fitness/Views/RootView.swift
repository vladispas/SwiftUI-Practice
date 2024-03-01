//
//  RootView.swift
//  Fitness
//
//  Created by Vlad Ispas on 01.03.2024.
//

import SwiftUI

struct RootView: View {
    
    var body: some View {
        NavigationStack {
            AuthView()
        }
    }
    
}

#Preview {
    RootView()
}
