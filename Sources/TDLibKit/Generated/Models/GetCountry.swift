//
//  GetCountry.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Returns information about an existing country. Can be called before authorization
public struct GetCountry: Codable, Equatable, Hashable {

    /// A two-letter ISO 3166-1 alpha-2 country code
    public let countryCode: String?


    public init(countryCode: String?) {
        self.countryCode = countryCode
    }
}

