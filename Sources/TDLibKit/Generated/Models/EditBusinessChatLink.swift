//
//  EditBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Edits a business chat link of the current account. Requires Telegram Business subscription. Returns the edited link
public struct EditBusinessChatLink: Codable, Equatable, Hashable {

    /// The link to edit
    public let link: String?

    /// New description of the link
    public let linkInfo: InputBusinessChatLink?


    public init(
        link: String?,
        linkInfo: InputBusinessChatLink?
    ) {
        self.link = link
        self.linkInfo = linkInfo
    }
}

