//
//  TestData.swift
//  Airbnb-Demo
//
//  Created by Marcel on 27.10.2023.
//

import Foundation

struct MockTestData {
    static let mockImages = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5",
        "listing-6",
    ]

    static let mockFeatureData = [
        FeatureData(icon: "wineglass.fill", title: "Self check-in", description: "You can make the check-in by yourself"),
        FeatureData(icon: "fork.knife", title: "Superhost", description: "Superhosts are experienced, highly rated hosts who are commited to provide great stars guests"),
        FeatureData(icon: "gift.circle", title: "Special gift", description: "We prepared for our delighted guests some gifts"),
    ]
}

struct FeatureData: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
    let description: String
}
