//
//  AuthView.swift
//  Insurance
//
//  Created by Vlad Ispas on 14.03.2024.
//

import SwiftUI

struct AuthView: View {
    
    @Binding var showDashboard: Bool
    
    var body: some View {
        ZStack {
            Color.insuranceTheme
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 64) {
                Spacer()
                
                VStack(alignment: .leading, spacing: 24) {
                    Text("Smart\nInsurance\nhere!")
                        .foregroundStyle(.white)
                        .font(.system(size: 64, weight: .semibold))
                    
                    Text("Find all your needs faster\nthan ever")
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .bold))
                }
                
                VStack(alignment: .leading, spacing: 24) {
                    Button {
                        showDashboard = true
                    } label: {
                        Text("New Account")
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                            .padding(.horizontal, 24)
                            .foregroundStyle(.insuranceTheme)
                            .background {
                                RoundedRectangle(cornerRadius: 32, style: .continuous)
                                    .fill(.insuranceAccent)
                            }
                    }
                    
                    Button {
                        showDashboard = true
                    } label: {
                        Text("Sign In")
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                            .padding(.horizontal, 24)
                            .foregroundStyle(.insuranceAccent)
                            .background {
                                RoundedRectangle(cornerRadius: 32, style: .continuous)
                                    .fill(.insuranceTheme)
                                    .stroke(.insuranceAccent, style: StrokeStyle())
                            }
                    }
                }
                .padding(.bottom, 32)
            }
        }
    }
    
}

#Preview {
    AuthView(showDashboard: .constant(false))
}
