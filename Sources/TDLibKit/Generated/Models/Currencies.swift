//
//  Currencies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Represents a list of currencies
public struct Currencies: Codable, Equatable, Hashable {

    /// A list of ISO 4217 currency codes
    public let currencies: [String]


    public init(currencies: [String]) {
        self.currencies = currencies
    }
}

