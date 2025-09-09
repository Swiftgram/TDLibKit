//
//  CreateGiftCollection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
//

import Foundation


/// Creates a collection from gifts on the current user's or a channel's profile page; requires can_post_messages administrator right in the channel chat. An owner can have up to getOption("gift_collection_count_max") gift collections. The new collection will be added to the end of the gift collection list of the owner. Returns the created collection
public struct CreateGiftCollection: Codable, Equatable, Hashable {

    /// Name of the collection; 1-12 characters
    public let name: String?

    /// Identifier of the user or the channel chat that received the gifts
    public let ownerId: MessageSender?

    /// Identifier of the gifts to add to the collection; 0-getOption("gift_collection_gift_count_max") identifiers
    public let receivedGiftIds: [String]?


    public init(
        name: String?,
        ownerId: MessageSender?,
        receivedGiftIds: [String]?
    ) {
        self.name = name
        self.ownerId = ownerId
        self.receivedGiftIds = receivedGiftIds
    }
}

