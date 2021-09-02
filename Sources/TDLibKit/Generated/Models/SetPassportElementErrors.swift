//
//  SetPassportElementErrors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed
public struct SetPassportElementErrors: Codable {

    /// The errors
    public let errors: [InputPassportElementError]

    /// User identifier
    public let userId: Int


    public init(
        errors: [InputPassportElementError],
        userId: Int
    ) {
        self.errors = errors
        self.userId = userId
    }
}

