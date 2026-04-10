//
//  QuickReplyMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

