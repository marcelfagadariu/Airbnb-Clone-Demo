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
    private let service: ExplorerService

    // MARK: - Init

    init(listing: [Listing] = [Listing](), service: ExplorerService) {
        self.listing = listing
        self.service = service
    }

    // MARK: - Functions

    func fetchListing() async {
        do {
            self.listing = try await service.fetchListing()
        } catch {
            print("Throw error")
        }
    }
}
