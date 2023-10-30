//
//  RentalOfferProviderView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct RentalOfferProviderView: View {

    let listing: Listing

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offer")
                .font(.headline)

            ForEach(listing.aminities) { item in
                HStack {
                    Image(systemName: item.imageName)
                        .frame(width: 32)
                    Text(item.title)
                        .font(.footnote)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    RentalOfferProviderView(listing: DeveloperPreview().listing[0])
}
