//
//  Currencies.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
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

