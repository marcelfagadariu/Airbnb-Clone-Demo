//
//  RentalOfferProviderView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct RentalOfferProviderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offer")
                .font(.headline)

            ForEach(MockTestData.mockOfferData) { item in
                HStack {
                    Image(systemName: item.icon)
                        .frame(width: 32)
                    Text(item.description)
                        .font(.footnote)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    RentalOfferProviderView()
}
