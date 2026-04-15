//
//  ProcessChatHasProtectedContentDisableRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8921c22f
//  https://github.com/tdlib/td/tree/8921c22f
//

import Foundation


/// Processes request to disable has_protected_content in a chat
public struct ProcessChatHasProtectedContentDisableRequest: Codable, Equatable, Hashable {

    /// Pass true to approve the request; pass false to reject the request
    public let approve: Bool?

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the message with the request. The message must be incoming and has content of the type messageChatHasProtectedContentDisableRequested
    public let requestMessageId: Int64?


    public init(
        approve: Bool?,
        chatId: Int64?,
        requestMessageId: Int64?
    ) {
        self.approve = approve
        self.chatId = chatId
        self.requestMessageId = requestMessageId
    }
}

