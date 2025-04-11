//
//  EditBusinessChatLink.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
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

