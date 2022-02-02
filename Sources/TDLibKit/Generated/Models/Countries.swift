//
//  Countries.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.1-1e1ab5d1
//  https://github.com/tdlib/td/tree/1e1ab5d1
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

