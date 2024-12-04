//
//  ChatBoostSlots.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Contains a list of chat boost slots
public struct ChatBoostSlots: Codable, Equatable, Hashable {

    /// List of boost slots
    public let slots: [ChatBoostSlot]


    public init(slots: [ChatBoostSlot]) {
        self.slots = slots
    }
}

