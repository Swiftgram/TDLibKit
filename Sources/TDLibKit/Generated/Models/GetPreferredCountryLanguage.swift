//
//  GetPreferredCountryLanguage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
public struct GetPreferredCountryLanguage: Codable, Equatable, Hashable {

    /// A two-letter ISO 3166-1 alpha-2 country code
    public let countryCode: String?


    public init(countryCode: String?) {
        self.countryCode = countryCode
    }
}

