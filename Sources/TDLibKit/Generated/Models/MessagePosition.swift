//
//  MessagePosition.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
//

import Foundation


/// Contains information about a message in a specific position
public struct MessagePosition: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the message was sent
    public let date: Int

    /// Message identifier
    public let messageId: Int64

    /// 0-based message position in the full list of suitable messages
    public let position: Int


    public init(
        date: Int,
        messageId: Int64,
        position: Int
    ) {
        self.date = date
        self.messageId = messageId
        self.position = position
    }
}

