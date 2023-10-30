//
//  ListingDetailView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss
    @State private var coordinate = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
    let listing: Listing

    var body: some View {
        ScrollView {
            /// embeder in ZStack to add back button
            ZStack(alignment: .topLeading) {
                /// images overview
                ListingImageCarousellView(listing: listing, height: 320, isClipped: false)

                /// back button
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        )
                        .padding(.top, 35)
                        .padding(32)
                }
            }

            /// location info view
            LocationInfoView(listing: listing)

            Divider()

            /// host info view
            HostView(listing: listing)

            Divider()

            /// listing feature view
            ListingFeatureView(listing: listing)

            Divider()

            /// room info view
            RoomInfoView(listing: listing)

            Divider()

            /// rental offer provider view
            RentalOfferProviderView(listing: listing)

            Divider()

            /// map view
            MapView(listing: listing)
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 65)
        .overlay(alignment: .bottom) {
            /// reserve view
            ReservationView(listing: listing)
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview().listing[0])
}
