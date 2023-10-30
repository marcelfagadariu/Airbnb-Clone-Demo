//
//  HostView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct HostView: View {

    // MARK: - Internal

    let listing: Listing

    // MARK: - Body

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                    .font(.headline)

                HStack(spacing: 2) {
                    Text("\(listing.numberOfGuests) guests - ")
                    Text("\(listing.numberOfBedrooms) bedroms - ")
                    Text("\(listing.numberOfBeds) beds - ")
                    Text("\(listing.numberOfBaths) baths")
                }
                .font(.caption)
            }
            .frame(width: 250, alignment: .leading)

            Spacer()

            Image(listing.ownerImageURL)
                .resizable()
                .scaledToFill()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    HostView(listing: DeveloperPreview().listing[0])
}
