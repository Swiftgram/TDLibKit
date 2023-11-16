//
//  BoostChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-aefbf032
//  https://github.com/tdlib/td/tree/aefbf032
//

import Foundation


/// Boosts a chat and returns the list of available chat boost slots for the current user after the boost
public struct BoostChat: Codable, Equatable, Hashable {

    /// Identifier of the chat
    public let chatId: Int64?

    /// Identifiers of boost slots of the current user from which to apply boosts to the chat
    public let slotIds: [Int]?


    public init(
        chatId: Int64?,
        slotIds: [Int]?
    ) {
        self.chatId = chatId
        self.slotIds = slotIds
    }
}

