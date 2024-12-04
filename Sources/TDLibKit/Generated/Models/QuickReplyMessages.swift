//
//  QuickReplyMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
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

