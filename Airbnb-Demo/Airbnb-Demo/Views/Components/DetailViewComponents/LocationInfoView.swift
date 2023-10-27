//
//  LocationInfoView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct LocationInfoView: View {

    // MARK: - Internal



    // MAK: - Body

    var body: some View {
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
    }
}

#Preview {
    LocationInfoView()
}
