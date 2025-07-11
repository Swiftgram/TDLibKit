//
//  GetStarAdAccountUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
//

import Foundation


/// Returns a URL for a Telegram Ad platform account that can be used to set up advertisements for the chat paid in the owned Telegram Stars
public struct GetStarAdAccountUrl: Codable, Equatable, Hashable {

    /// Identifier of the owner of the Telegram Stars; can be identifier of an owned bot, or identifier of an owned channel chat
    public let ownerId: MessageSender?


    public init(ownerId: MessageSender?) {
        self.ownerId = ownerId
    }
}

