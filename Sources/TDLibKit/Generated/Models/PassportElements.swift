//
//  PassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Contains information about saved Telegram Passport elements
public struct PassportElements: Codable, Equatable, Hashable {

    /// Telegram Passport elements
    public let elements: [PassportElement]


    public init(elements: [PassportElement]) {
        self.elements = elements
    }
}

