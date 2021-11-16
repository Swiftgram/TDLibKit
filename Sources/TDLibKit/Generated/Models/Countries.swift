//
//  Countries.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains information about countries
public struct Countries: Codable {

    /// The list of countries
    public let countries: [CountryInfo]


    public init(countries: [CountryInfo]) {
        self.countries = countries
    }
}

