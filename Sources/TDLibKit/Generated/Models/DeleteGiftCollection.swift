//
//  DeleteGiftCollection.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
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

