//
//  DisconnectChatAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Disconnects an affiliate program from the given chat and immediately deactivates its referral link. Returns updated information about the disconnected affiliate program
public struct DisconnectChatAffiliateProgram: Codable, Equatable, Hashable {

    /// Identifier of the chat for which the affiliate program is connected
    public let chatId: Int64?

    /// The referral link of the affiliate program
    public let url: String?


    public init(
        chatId: Int64?,
        url: String?
    ) {
        self.chatId = chatId
        self.url = url
    }
}

