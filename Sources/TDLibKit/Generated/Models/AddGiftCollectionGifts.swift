//
//  AddGiftCollectionGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Adds gifts to the beginning of a previously created collection. If the collection is owned by a channel chat, then requires can_post_messages administrator right in the channel chat. Returns the changed collection
public struct AddGiftCollectionGifts: Codable, Equatable, Hashable {

    /// Identifier of the gift collection
    public let collectionId: Int?

    /// Identifier of the user or the channel chat that owns the collection
    public let ownerId: MessageSender?

    /// Identifier of the gifts to add to the collection; 1-getOption("gift_collection_size_max") identifiers. If after addition the collection has more than getOption("gift_collection_size_max") gifts, then the last one are removed from the collection
    public let receivedGiftIds: [String]?


    public init(
        collectionId: Int?,
        ownerId: MessageSender?,
        receivedGiftIds: [String]?
    ) {
        self.collectionId = collectionId
        self.ownerId = ownerId
        self.receivedGiftIds = receivedGiftIds
    }
}

