//
//  ListingFeatureView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingFeatureView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(MockTestData.mockFeatureData) { feature in
                HStack(spacing: 12) {
                    Image(systemName: feature.icon)

                    VStack(alignment: .leading) {
                        Text(feature.title)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text(feature.description)
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }

                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListingFeatureView()
}
