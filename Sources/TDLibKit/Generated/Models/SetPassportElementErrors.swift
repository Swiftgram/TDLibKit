//
//  SetPassportElementErrors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
public struct SetPassportElementErrors: Codable, Equatable {

    /// The errors
    public let errors: [InputPassportElementError]?

    /// User identifier
    public let userId: Int64?


    public init(
        errors: [InputPassportElementError]?,
        userId: Int64?
    ) {
        self.errors = errors
        self.userId = userId
    }
}

