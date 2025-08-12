//
//  SearchChatAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Searches a chat with an affiliate program. Returns the chat if found and the program is active
public struct SearchChatAffiliateProgram: Codable, Equatable, Hashable {

    /// The referrer from an internalLinkTypeChatAffiliateProgram link
    public let referrer: String?

    /// Username of the chat
    public let username: String?


    public init(
        referrer: String?,
        username: String?
    ) {
        self.referrer = referrer
        self.username = username
    }
}

