//
//  ProfileView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileLoggingView()
            
            VStack(spacing: 24) {
                ProfileOptionView(imageName: "gear", title: "Settings")
                ProfileOptionView(imageName: "gear", title: "Accessibility")
                ProfileOptionView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
