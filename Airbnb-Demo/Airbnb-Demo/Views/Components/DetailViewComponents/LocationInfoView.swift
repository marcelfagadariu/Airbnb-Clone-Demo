//
//  LocationInfoView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct LocationInfoView: View {

    // MARK: - Internal

    let listing: Listing

    // MAK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(listing.title)
                .font(.title)
                .fontWeight(.semibold)

            VStack(alignment: .leading) {
                HStack {
                    RatingView(rating: listing.rating)
                    Text("-")
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)

                Text("\(listing.city), \(listing.state)")
            }
            .font(.caption)
        }
        .padding(.leading)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    LocationInfoView(listing: DeveloperPreview().listing[0])
}
