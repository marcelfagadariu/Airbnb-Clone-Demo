//
//  DestinationSearchView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 28.10.2023.
//

import SwiftUI

struct DestinationSearchView: View {

    // MARK: - Internal

    var viewModel: ExploreViewModel
    @Binding var isDismissed: Bool
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

                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()

            WhereToGoView(selection: $selection,
                          isDismissed: $isDismissed,
                          viewModel: viewModel)
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
    DestinationSearchView(viewModel: ExploreViewModel(service: ExplorerService()), isDismissed: .constant(true))
}
