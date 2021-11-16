//
//  ApproveChatJoinRequest.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Approves pending join request in a chat
public struct ApproveChatJoinRequest: Codable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the user, which request will be approved
    public let userId: Int64?


    public init(
        chatId: Int64?,
        userId: Int64?
    ) {
        self.chatId = chatId
        self.userId = userId
    }
}

