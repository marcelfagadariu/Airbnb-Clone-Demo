//
//  ListingDetailView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingDetailView: View {

    var body: some View {
        ScrollView {
            ListingImageCarousellView(height: 320, isClipped: false)

            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)

                VStack(alignment: .leading) {
                    HStack {
                        RatingView(rating: 4.52)
                        Text("-")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)

                    Text("Miami Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)

            Divider()

            /// host info view
            HostView(name: "Fagadariu Marcel")

            Divider()

            /// listing feature view
            ListingFeaturView()
        }
    }
}

#Preview {
    ListingDetailView()
}
