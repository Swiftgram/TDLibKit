//
//  SetPassportElementErrors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Informs the user who some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
public struct SetPassportElementErrors: Codable, Equatable, Hashable {

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

