//
//  CreateBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
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

