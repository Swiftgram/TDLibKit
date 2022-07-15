//
//  Countries.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-0bdd15fe
//  https://github.com/tdlib/td/tree/0bdd15fe
//

import Foundation


/// Contains information about countries
public struct Countries: Codable, Equatable {

    /// The list of countries
    public let countries: [CountryInfo]


    public init(countries: [CountryInfo]) {
        self.countries = countries
    }
}

