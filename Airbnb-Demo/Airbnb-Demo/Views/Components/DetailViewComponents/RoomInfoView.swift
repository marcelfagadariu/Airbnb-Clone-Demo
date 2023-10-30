//
//  RoomInfoView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct RoomInfoView: View {
    
    let listing: Listing

    var body: some View {
        VStack(alignment: .leading) {
            Text("Where you'll sleep")
                .font(.headline)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1...listing.numberOfBedrooms, id: \.self) { item in
                        VStack {
                            Image(systemName: "bed.double")
                            Text("Bedroom \(item)")
                        }
                        .frame(width: 135, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .scrollTargetBehavior(.paging)
        }
        .padding()
    }
}

#Preview {
    RoomInfoView(listing: DeveloperPreview().listing[0])
}
