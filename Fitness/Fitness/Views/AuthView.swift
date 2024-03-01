//
//  AuthView.swift
//  Fitness
//
//  Created by Vlad Ispas on 01.03.2024.
//

import SwiftUI

struct AuthView: View {
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 48) {
                Spacer()
                
                text
                
                buttons
            }
        }
    }
    
    private var text: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("SPEEDSPRINT")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(Color.gray)
            
            Text("Together,\nwe can.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
        }
        .padding(.horizontal, 24)
    }
    
    private var buttons: some View {
        VStack(spacing: 16) {
            Button {
                // TODO: Navigate to home screen
            } label: {
                Text("Sign up")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .foregroundStyle(.red)
                    }
                    .padding(.horizontal, 24)
            }
            
            Button {
                // TODO: Navigate to home screen
            } label: {
                Text("Log in")
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 20, style: .circular)
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 24)
            }
        }
    }
    
}

#Preview {
    AuthView()
}
