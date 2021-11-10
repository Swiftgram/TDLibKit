//
//  PassportElements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4f1e5db8
//  https://github.com/tdlib/td/tree/4f1e5db8
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

