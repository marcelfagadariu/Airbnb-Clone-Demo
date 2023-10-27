//
//  ListingDetailView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {
            /// embeder in ZStack to add back button
            ZStack(alignment: .topLeading) {
                /// images overview
                ListingImageCarousellView(height: 320, isClipped: false)

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
            LocationInfoView()

            Divider()

            /// host info view
            HostView(name: "Fagadariu Marcel")

            Divider()

            /// listing feature view
            ListingFeatureView()

            Divider()

            /// room info view
            RoomInfoView()

            Divider()

            /// rental offer provider view
            RentalOfferProviderView()

            Divider()

            /// map view
            MapView()
        }
        .ignoresSafeArea()
        .padding(.bottom, 65)
        .overlay(alignment: .bottom) {
            /// reserve view
            ReservationView()
        }
    }
}

#Preview {
    ListingDetailView()
}
