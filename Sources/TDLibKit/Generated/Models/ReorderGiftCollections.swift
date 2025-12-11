//
//  ReorderGiftCollections.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Changes order of gift collections. If the collections are owned by a channel chat, then requires can_post_messages administrator right in the channel chat
public struct ReorderGiftCollections: Codable, Equatable, Hashable {

    /// New order of gift collections
    public let collectionIds: [Int]?

    /// Identifier of the user or the channel chat that owns the collection
    public let ownerId: MessageSender?


    public init(
        collectionIds: [Int]?,
        ownerId: MessageSender?
    ) {
        self.collectionIds = collectionIds
        self.ownerId = ownerId
    }
}

