//
//  ProfileOptionView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import SwiftUI

struct ProfileOptionView: View {

    let imageName: String
    let title: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileOptionView(imageName: "gear", title: "Settings")
}
