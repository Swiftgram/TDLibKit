//
//  GetCountryFlagEmoji.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns an emoji for the given country. Returns an empty string on failure. Can be called synchronously
public struct GetCountryFlagEmoji: Codable, Equatable, Hashable {

    /// A two-letter ISO 3166-1 alpha-2 country code as received from getCountries
    public let countryCode: String?


    public init(countryCode: String?) {
        self.countryCode = countryCode
    }
}

