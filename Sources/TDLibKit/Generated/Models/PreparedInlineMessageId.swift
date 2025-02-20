//
//  PreparedInlineMessageId.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-521aed8e
//  https://github.com/tdlib/td/tree/521aed8e
//

import Foundation


/// Represents an inline message that can be sent via the bot
public struct PreparedInlineMessageId: Codable, Equatable, Hashable, Identifiable {

    /// Point in time (Unix timestamp) when the message can't be used anymore
    public let expirationDate: Int

    /// Unique identifier for the message
    public let id: String


    public init(
        expirationDate: Int,
        id: String
    ) {
        self.expirationDate = expirationDate
        self.id = id
    }
}

