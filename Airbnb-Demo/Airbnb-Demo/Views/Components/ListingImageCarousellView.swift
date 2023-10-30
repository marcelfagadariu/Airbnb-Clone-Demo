//
//  ListingImageCarousellView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingImageCarousellView: View {

    let listing: Listing
    let height: CGFloat
    var isClipped: Bool = true

    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(height: height)
        .clipShape(isClipped ? RoundedRectangle(cornerRadius: 10) : RoundedRectangle(cornerRadius: 0))
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarousellView(listing: DeveloperPreview().listing[0], height: 320)
}
