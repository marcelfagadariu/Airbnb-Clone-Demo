//
//  WhereToGoView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct WhereToGoView: View {

    @Binding var destination: String
    @Binding var selection: DestinationSearchOption

    var body: some View {
        VStack(alignment: .leading) {
            if selection == .location {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    TextField("Search destination", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                }
            } else {
                CollapsedPickerView(title: "Where", description: "Add destination")
            }
        }
        .frame(height: selection == .location ? 120 : 64)
        .modifier(CollapsibleDestinationViewModifier())
    }
}

#Preview {
    Group {
        WhereToGoView(destination: .constant("text"), selection: .constant(.guests))
        WhereToGoView(destination: .constant("text"), selection: .constant(.location))
    }
}
