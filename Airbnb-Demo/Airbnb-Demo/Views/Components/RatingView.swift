//
//  RatingView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct RatingView: View {

    let rating: Double

    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text(rating.formatted(.number.precision(.fractionLength(2))))
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    RatingView(rating: 4.55)
}
