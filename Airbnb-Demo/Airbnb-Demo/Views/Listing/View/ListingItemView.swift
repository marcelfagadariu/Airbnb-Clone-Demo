//
//  ListingItemView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingItemView: View {

    let listing: Listing

    var body: some View {
        VStack(spacing: 8) {
            /// images
            ListingImageCarousellView(listing: listing, height: 320)

            /// listing detail
            HStack(alignment: .top) {
                ///details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 min away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$ \(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()

                ///rating
                RatingView(rating: listing.rating)
            }
            .font(.footnote)
        }
        .padding()
    }
}
