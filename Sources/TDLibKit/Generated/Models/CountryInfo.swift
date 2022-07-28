//
//  CountryInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Contains information about a country
public struct CountryInfo: Codable, Equatable {

    /// List of country calling codes
    public let callingCodes: [String]

    /// A two-letter ISO 3166-1 alpha-2 country code
    public let countryCode: String

    /// English name of the country
    public let englishName: String

    /// True, if the country must be hidden from the list of all countries
    public let isHidden: Bool

    /// Native name of the country
    public let name: String


    public init(
        callingCodes: [String],
        countryCode: String,
        englishName: String,
        isHidden: Bool,
        name: String
    ) {
        self.callingCodes = callingCodes
        self.countryCode = countryCode
        self.englishName = englishName
        self.isHidden = isHidden
        self.name = name
    }
}

