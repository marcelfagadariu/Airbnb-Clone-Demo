//
//  ReservationView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ReservationView: View {

    let listing: Listing

    var body: some View {
        VStack {
            Divider()
                .padding(.bottom)

            HStack {
                VStack(alignment: .leading) {
                    Text("$ \(listing.pricePerNight)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Total before taxes")
                        .font(.footnote)
                    Text("Oct 15 - 20")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .underline()
                }

                Spacer()

                Button {

                } label: {
                    Text("Reserve")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .padding(.horizontal, 32)
        }
        .background(.white)
    }
}

#Preview {
    ReservationView(listing: DeveloperPreview().listing[0])
}
