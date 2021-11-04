//
//  Countries.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-0208b705
//  https://github.com/tdlib/td/tree/0208b705
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

