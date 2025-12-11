//
//  RemoveGiftCollectionGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Removes gifts from a collection. If the collection is owned by a channel chat, then requires can_post_messages administrator right in the channel chat. Returns the changed collection
public struct RemoveGiftCollectionGifts: Codable, Equatable, Hashable {

    /// Identifier of the gift collection
    public let collectionId: Int?

    /// Identifier of the user or the channel chat that owns the collection
    public let ownerId: MessageSender?

    /// Identifier of the gifts to remove from the collection
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

