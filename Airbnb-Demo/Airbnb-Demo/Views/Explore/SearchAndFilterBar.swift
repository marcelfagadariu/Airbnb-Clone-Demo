//
//  SearchAndFilterBar.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            VStack(alignment: .leading, spacing: 2) {
                Text("Where to go")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any week")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }

            Spacer()

            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
