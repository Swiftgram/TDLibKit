//
//  SetUserSupportInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-0e331959
//  https://github.com/tdlib/td/tree/0e331959
//

import Foundation


/// Sets support information for the given user; for Telegram support only
public struct SetUserSupportInfo: Codable, Equatable {

    /// New information message
    public let message: FormattedText?

    /// User identifier
    public let userId: Int64?


    public init(
        message: FormattedText?,
        userId: Int64?
    ) {
        self.message = message
        self.userId = userId
    }
}
