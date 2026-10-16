//
//  DeleteGiftCollection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Deletes a gift collection. If the collection is owned by a channel chat, then requires can_post_messages administrator right in the channel chat
public struct DeleteGiftCollection: Codable, Equatable, Hashable {

    /// Identifier of the gift collection
    public let collectionId: Int?

    /// Identifier of the user or the channel chat that owns the collection
    public let ownerId: MessageSender?


    public init(
        collectionId: Int?,
        ownerId: MessageSender?
    ) {
        self.collectionId = collectionId
        self.ownerId = ownerId
    }
}

