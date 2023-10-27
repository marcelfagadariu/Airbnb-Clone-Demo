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
                /// Only `loads` what we can see on the screen
                LazyVStack(spacing: 25) {
                    ForEach(0..<10, id: \.self) { item in
                        ListingItemView()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}