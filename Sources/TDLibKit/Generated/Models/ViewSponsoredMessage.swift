//
//  ViewSponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
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

