//
//  CollapsedPickerView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct CollapsedPickerView: View {

    let title: String
    let description: String

    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}

#Preview {
    CollapsedPickerView(title: "Title", description: "Description")
}
