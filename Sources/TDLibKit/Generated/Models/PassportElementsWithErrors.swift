//
//  PassportElementsWithErrors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains information about Telegram Passport elements and corresponding errors
public struct PassportElementsWithErrors: Codable, Equatable, Hashable {

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

