//
//  DestinationSearchView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct DestinationSearchView: View {

    // MARK: - Internal

    @Binding var isDismissed: Bool
    @State private var destination = ""
    @State private var selection: DestinationSearchOption = .location
    @State var startDate = Date()
    @State var endDate = Date()
    @State var guests = 0

    // MARK: - Body

    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        isDismissed.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }

                Spacer()

                if !destination.isEmpty {
                    Button("Clear") {
                        destination = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()

            WhereToGoView(destination: $destination, selection: $selection)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = .location
                    }
                }

            DatesSearchView(selection: $selection, startDate: $startDate, endDate: $endDate)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = .dates
                    }
                }

            GuestSearchView(selection: $selection, guests: $guests)
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = .guests
                    }
                }

            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(isDismissed: .constant(true))
}
