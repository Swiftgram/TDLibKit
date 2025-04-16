//
//  SetPinnedGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Changes the list of pinned gifts on the current user's or the channel's profile page; requires can_post_messages administrator right in the channel chat
public struct SetPinnedGifts: Codable, Equatable, Hashable {

    /// Identifier of the user or the channel chat that received the gifts
    public let ownerId: MessageSender?

    /// New list of pinned gifts. All gifts must be upgraded and saved on the profile page first. There can be up to getOption("pinned_gift_count_max") pinned gifts
    public let receivedGiftIds: [String]?


    public init(
        ownerId: MessageSender?,
        receivedGiftIds: [String]?
    ) {
        self.ownerId = ownerId
        self.receivedGiftIds = receivedGiftIds
    }
}

