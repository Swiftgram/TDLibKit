//
//  PassportElementsWithErrors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Contains information about a Telegram Passport elements and corresponding errors
public struct PassportElementsWithErrors: Codable {

    /// Telegram Passport elements
    public let elements: [PassportElement]

    /// Errors in the elements that are already available
    public let errors: [PassportElementError]


    public init(
        elements: [PassportElement],
        errors: [PassportElementError]
    ) {
        self.elements = elements
        self.errors = errors
    }
}

