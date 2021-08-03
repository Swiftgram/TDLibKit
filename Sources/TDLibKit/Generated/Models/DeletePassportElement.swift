//
//  DeletePassportElement.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Deletes a Telegram Passport element
public struct DeletePassportElement: Codable {

    /// Element type
    public let type: PassportElementType


    public init(type: PassportElementType) {
        self.type = type
    }
}

