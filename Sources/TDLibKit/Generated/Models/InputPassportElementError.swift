//
//  InputPassportElementError.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains the description of an error in a Telegram Passport element; for bots only
public struct InputPassportElementError: Codable, Equatable, Hashable {

    /// Error message
    public let message: String

    /// Error source
    public let source: InputPassportElementErrorSource

    /// Type of Telegram Passport element that has the error
    public let type: PassportElementType


    public init(
        message: String,
        source: InputPassportElementErrorSource,
        type: PassportElementType
    ) {
        self.message = message
        self.source = source
        self.type = type
    }
}

