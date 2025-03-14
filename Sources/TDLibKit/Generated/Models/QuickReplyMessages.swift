//
//  QuickReplyMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Contains a list of quick reply messages
public struct QuickReplyMessages: Codable, Equatable, Hashable {

    /// List of quick reply messages; messages may be null
    public let messages: [QuickReplyMessage]?


    public init(messages: [QuickReplyMessage]?) {
        self.messages = messages
    }
}

