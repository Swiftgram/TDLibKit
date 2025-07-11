//
//  CreateBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Creates a business chat link for the current account. Requires Telegram Business subscription. There can be up to getOption("business_chat_link_count_max") links created. Returns the created link
public struct CreateBusinessChatLink: Codable, Equatable, Hashable {

    /// Information about the link to create
    public let linkInfo: InputBusinessChatLink?


    public init(linkInfo: InputBusinessChatLink?) {
        self.linkInfo = linkInfo
    }
}

