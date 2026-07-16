//
//  GetGiftCollections.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Returns collections of gifts owned by the given user or chat
public struct GetGiftCollections: Codable, Equatable, Hashable {

    /// Identifier of the user or the channel chat that received the gifts
    public let ownerId: MessageSender?


    public init(ownerId: MessageSender?) {
        self.ownerId = ownerId
    }
}

