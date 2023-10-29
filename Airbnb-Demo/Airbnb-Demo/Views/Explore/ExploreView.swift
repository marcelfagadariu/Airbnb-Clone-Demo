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

    // MARK: - Body

    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(isDismissed: $showDestinationSearchView)
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
                        ForEach(0..<10, id: \.self) { items in
                            NavigationLink(value: items) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { items in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                    /// dismissed native back button so we have the custom one
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
