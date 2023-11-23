//
//  Countries.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Contains information about countries
public struct Countries: Codable, Equatable, Hashable {

    /// The list of countries
    public let countries: [CountryInfo]


    public init(countries: [CountryInfo]) {
        self.countries = countries
    }
}

