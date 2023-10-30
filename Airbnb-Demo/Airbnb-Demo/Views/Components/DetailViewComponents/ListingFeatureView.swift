//
//  ListingFeatureView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingFeatureView: View {

    let listing: Listing

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(listing.features) { feature in
                HStack(spacing: 12) {
                    Image(systemName: feature.imageName)

                    VStack(alignment: .leading) {
                        Text(feature.title)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text(feature.subtitle)
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
    ListingFeatureView(listing: DeveloperPreview().listing[0])
}
