//
//  Listing.swift
//  Airbnb-Demo
//
//  Created by Marcel on 29.10.2023.
//

import Foundation

struct Listing: Identifiable, Decodable, Hashable {
    let id: String
    let ownerID: String
    let ownerName: String
    let ownerImageURL: String
    let imageURLs: [String]
    let numberOfBedrooms: Int
    let numberOfBaths: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var aminities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost

    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }

    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }

    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad"
        case .superHost: return "Superhost are experienced, highly rated hosts who are commited to provide great stars for guests"
        }
    }

    var id: Int { self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony

    var id: Int { self.rawValue }

    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "WiFi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "AlarmSystem"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }

    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.end.ruler.fill"
        case .balcony: return "building"
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartament
    case house
    case townHouse
    case villa

    var description: String {
        switch self {
        case .apartament: return "Apartament"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }

    var id: Int { return self.rawValue }
}
