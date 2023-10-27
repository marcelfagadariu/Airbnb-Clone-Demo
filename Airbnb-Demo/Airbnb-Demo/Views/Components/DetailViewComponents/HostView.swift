//
//  HostView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct HostView: View {

    // MARK: - Internal

    let name: String

    // MARK: - Body

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire villa hosted by \(name)")
                    .font(.headline)

                HStack(spacing: 2) {
                    Text("4 guests - ")
                    Text("4 bedroms - ")
                    Text("3 beds - ")
                    Text("2 baths")
                }
                .font(.caption)
            }
            .frame(width: 250, alignment: .leading)

            Spacer()

            Image("male-profile")
                .resizable()
                .scaledToFill()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    HostView(name: "Jhon Smith")
}
