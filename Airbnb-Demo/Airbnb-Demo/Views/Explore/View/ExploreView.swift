//
//  ExploreView.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import SwiftUI

struct ExploreView: View {

    // MARK: - Properties

    @State private var showDestinationSearchView = false
    var viewModel = ExploreViewModel(service: ExplorerService())

    // MARK: - Body

    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(viewModel: viewModel, isDismissed: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }

                    /// Only `loads` what we can see on the screen
                    LazyVStack(spacing: 25) {
                        ForEach(viewModel.listing) { item in
                            NavigationLink(value: item) {
                                ListingItemView(listing: item)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { item in
                    ListingDetailView(listing: item)
                        .navigationBarBackButtonHidden()
                    /// dismissed native back button so we have the custom one
                }
                .task {
                    await viewModel.fetchListing()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
