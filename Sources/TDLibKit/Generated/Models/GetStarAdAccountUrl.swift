//
//  GetStarAdAccountUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
//

import Foundation


/// Returns a URL for a Telegram Ad platform account that can be used to set up advertisments for the chat paid in the owned Telegram stars
public struct GetStarAdAccountUrl: Codable, Equatable, Hashable {

    /// Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of an owned channel chat
    public let ownerId: MessageSender?


    public init(ownerId: MessageSender?) {
        self.ownerId = ownerId
    }
}

