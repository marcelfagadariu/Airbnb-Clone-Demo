//
//  WhishListView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import SwiftUI

struct WhishListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your whishlist")
                        .font(.headline)
                    Text("You can create, view or edit whishlist once you've logged in")
                        .font(.footnote)
                }
                LoggingButtonView()
                Spacer()
            }
            .padding()
            .navigationTitle("Whishlists")
        }
    }
}

#Preview {
    WhishListView()
}
