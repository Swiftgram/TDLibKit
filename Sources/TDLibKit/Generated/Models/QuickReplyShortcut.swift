//
//  QuickReplyShortcut.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a shortcut that can be used for a quick reply
public struct QuickReplyShortcut: Codable, Equatable, Hashable, Identifiable {

    /// The first shortcut message
    public let firstMessage: QuickReplyMessage

    /// Unique shortcut identifier
    public let id: Int

    /// The total number of messages in the shortcut
    public let messageCount: Int

    /// The name of the shortcut that can be used to use the shortcut
    public let name: String


    public init(
        firstMessage: QuickReplyMessage,
        id: Int,
        messageCount: Int,
        name: String
    ) {
        self.firstMessage = firstMessage
        self.id = id
        self.messageCount = messageCount
        self.name = name
    }
}

