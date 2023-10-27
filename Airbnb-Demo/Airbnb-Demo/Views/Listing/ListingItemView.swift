//
//  ListingItemView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingItemView: View {

    let mockImages = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5",
        "listing-6",
    ]

    var body: some View {
        VStack(spacing: 8) {
            /// images
            TabView {
                ForEach(mockImages, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)

            /// listing detail
            HStack(alignment: .top) {
                ///details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 min away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$5454")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()

                ///rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
