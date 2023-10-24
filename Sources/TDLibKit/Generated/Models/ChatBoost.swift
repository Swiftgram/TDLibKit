//
//  ChatBoost.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.20-7152a5c2
//  https://github.com/tdlib/td/tree/7152a5c2
//

import Foundation


/// Describes a boost of a chat
public struct ChatBoost: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the boost will automatically expire if the user will not prolongate their Telegram Premium subscription
    public let expirationDate: Int

    /// Identifier of a user that boosted the chat
    public let userId: Int64


    public init(
        expirationDate: Int,
        userId: Int64
    ) {
        self.expirationDate = expirationDate
        self.userId = userId
    }
}

