//
//  ExploreViewModel.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import Foundation
import Observation

@Observable
class ExploreViewModel {
    var listing = [Listing]()
    var searchLocation = ""
    private let service: ExplorerService
    private var listCopy = [Listing]()

    // MARK: - Init

    init(listing: [Listing] = [Listing](), service: ExplorerService) {
        self.listing = listing
        self.service = service
    }

    // MARK: - Functions

    func updateListing() {
        let filteredListing = listing.filter {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        }
        self.listing = filteredListing.isEmpty ? listCopy : filteredListing
    }

    func fetchListing() async {
        do {
            self.listing = try await service.fetchListing()
            self.listCopy = listing
        } catch {
            print("Throw error")
        }
    }
}
