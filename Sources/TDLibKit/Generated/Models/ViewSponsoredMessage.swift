//
//  ViewSponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Informs TDLib that a sponsored message was viewed by the user
public struct ViewSponsoredMessage: Codable, Equatable {

    /// Identifier of the chat with the sponsored message
    public let chatId: Int64?

    /// The identifier of the sponsored message being viewed
    public let sponsoredMessageId: Int?


    public init(
        chatId: Int64?,
        sponsoredMessageId: Int?
    ) {
        self.chatId = chatId
        self.sponsoredMessageId = sponsoredMessageId
    }
}

