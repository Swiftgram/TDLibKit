//
//  SendEmailAddressVerificationCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.0-789b9c0a
//  https://github.com/tdlib/td/tree/789b9c0a
//

import Foundation


/// Sends a code to verify an email address to be added to a user's Telegram Passport
public struct SendEmailAddressVerificationCode: Codable, Equatable {

    /// Email address
    public let emailAddress: String?


    public init(emailAddress: String?) {
        self.emailAddress = emailAddress
    }
}

