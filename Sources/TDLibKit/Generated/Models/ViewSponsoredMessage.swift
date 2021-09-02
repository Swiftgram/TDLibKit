//
//  ViewSponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Informs TDLib that a sponsored message was viewed by the user
public struct ViewSponsoredMessage: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The identifier of the sponsored message being viewed
    public let messageId: Data


    public init(
        chatId: Int64,
        messageId: Data
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

