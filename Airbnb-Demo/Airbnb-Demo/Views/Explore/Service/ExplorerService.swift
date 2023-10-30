//
//  ExplorerService.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import Foundation

class ExplorerService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview().listing 
    }
}
