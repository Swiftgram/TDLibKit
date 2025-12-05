//
//  ReorderGiftCollectionGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Changes order of gifts in a collection. If the collection is owned by a channel chat, then requires can_post_messages administrator right in the channel chat. Returns the changed collection
public struct ReorderGiftCollectionGifts: Codable, Equatable, Hashable {

    /// Identifier of the gift collection
    public let collectionId: Int?

    /// Identifier of the user or the channel chat that owns the collection
    public let ownerId: MessageSender?

    /// Identifier of the gifts to move to the beginning of the collection. All other gifts are placed in the current order after the specified gifts
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

