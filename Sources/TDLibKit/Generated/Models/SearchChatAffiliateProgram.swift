//
//  SearchChatAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
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

