//
//  BusinessChatLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains information about a business chat link
public struct BusinessChatLinkInfo: Codable, Equatable, Hashable {

    /// Identifier of the private chat that created the link
    public let chatId: Int64

    /// Message draft text that must be added to the input field
    public let text: FormattedText


    public init(
        chatId: Int64,
        text: FormattedText
    ) {
        self.chatId = chatId
        self.text = text
    }
}

