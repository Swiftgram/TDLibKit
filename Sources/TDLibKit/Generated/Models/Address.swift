//
//  Address.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an address
public struct Address: Codable, Equatable, Hashable {

    /// City
    public let city: String

    /// A two-letter ISO 3166-1 alpha-2 country code
    public let countryCode: String

    /// Address postal code
    public let postalCode: String

    /// State, if applicable
    public let state: String

    /// First line of the address
    public let streetLine1: String

    /// Second line of the address
    public let streetLine2: String


    public init(
        city: String,
        countryCode: String,
        postalCode: String,
        state: String,
        streetLine1: String,
        streetLine2: String
    ) {
        self.city = city
        self.countryCode = countryCode
        self.postalCode = postalCode
        self.state = state
        self.streetLine1 = streetLine1
        self.streetLine2 = streetLine2
    }
}

