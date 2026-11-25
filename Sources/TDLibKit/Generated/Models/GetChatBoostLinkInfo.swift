//
//  GetChatBoostLinkInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about a link to boost a chat. Can be called for any internal link of the type internalLinkTypeChatBoost
public struct GetChatBoostLinkInfo: Codable, Equatable, Hashable {

    /// The link to boost a chat
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

