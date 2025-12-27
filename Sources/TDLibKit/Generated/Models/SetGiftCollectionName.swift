//
//  SetGiftCollectionName.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Changes name of a gift collection. If the collection is owned by a channel chat, then requires can_post_messages administrator right in the channel chat. Returns the changed collection
public struct SetGiftCollectionName: Codable, Equatable, Hashable {

    /// Identifier of the gift collection
    public let collectionId: Int?

    /// New name of the collection; 1-12 characters
    public let name: String?

    /// Identifier of the user or the channel chat that owns the collection
    public let ownerId: MessageSender?


    public init(
        collectionId: Int?,
        name: String?,
        ownerId: MessageSender?
    ) {
        self.collectionId = collectionId
        self.name = name
        self.ownerId = ownerId
    }
}

