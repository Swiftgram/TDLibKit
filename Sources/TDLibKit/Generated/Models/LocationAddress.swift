//
//  LocationAddress.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Describes an address of a location
public struct LocationAddress: Codable, Equatable, Hashable {

    /// City; empty if unknown
    public let city: String

    /// A two-letter ISO 3166-1 alpha-2 country code
    public let countryCode: String

    /// State, if applicable; empty if unknown
    public let state: String

    /// The address; empty if unknown
    public let street: String


    public init(
        city: String,
        countryCode: String,
        state: String,
        street: String
    ) {
        self.city = city
        self.countryCode = countryCode
        self.state = state
        self.street = street
    }
}

