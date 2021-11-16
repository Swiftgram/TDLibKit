//
//  PassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Contains information about saved Telegram Passport elements
public struct PassportElements: Codable {

    /// Telegram Passport elements
    public let elements: [PassportElement]


    public init(elements: [PassportElement]) {
        self.elements = elements
    }
}

