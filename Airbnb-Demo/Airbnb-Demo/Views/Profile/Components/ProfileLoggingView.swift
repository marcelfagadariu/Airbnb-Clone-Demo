//
//  ProfileLoggingView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import SwiftUI

struct ProfileLoggingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Log in to plan your next trip")
            }

            LoggingButtonView()

            HStack {
                Text("Don't have an account?")
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.caption)
        }
    }
}

#Preview {
    ProfileLoggingView()
}
