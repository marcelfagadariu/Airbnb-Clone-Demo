//
//  MapView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI
import MapKit

struct MapView: View {

    let listing: Listing
    @State private var coordinateRegion: MKCoordinateRegion

    init(listing: Listing) {
        self.listing = listing
        _coordinateRegion = State(initialValue: MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05) // You can adjust the span as needed
        ))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            Map(coordinateRegion: $coordinateRegion)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}
