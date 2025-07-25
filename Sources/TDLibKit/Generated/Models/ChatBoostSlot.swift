//
//  ChatBoostSlot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Describes a slot for chat boost
public struct ChatBoostSlot: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) after which the boost can be used for another chat
    public let cooldownUntilDate: Int

    /// Identifier of the currently boosted chat; 0 if none
    public let currentlyBoostedChatId: Int64

    /// Point in time (Unix timestamp) when the boost will expire
    public let expirationDate: Int

    /// Unique identifier of the slot
    public let slotId: Int

    /// Point in time (Unix timestamp) when the chat was boosted; 0 if none
    public let startDate: Int


    public init(
        cooldownUntilDate: Int,
        currentlyBoostedChatId: Int64,
        expirationDate: Int,
        slotId: Int,
        startDate: Int
    ) {
        self.cooldownUntilDate = cooldownUntilDate
        self.currentlyBoostedChatId = currentlyBoostedChatId
        self.expirationDate = expirationDate
        self.slotId = slotId
        self.startDate = startDate
    }
}

