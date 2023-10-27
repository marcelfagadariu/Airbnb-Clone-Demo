//
//  ExploreView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()

                /// Only `loads` what we can see on the screen
                LazyVStack(spacing: 25) {
                    ForEach(0..<10, id: \.self) { items in
                        NavigationLink(value: items) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { items in
                Text("Detail view")
            }
        }
    }
}

#Preview {
    ExploreView()
}
