//
//  ChatBoostSlots.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-da9afda7
//  https://github.com/tdlib/td/tree/da9afda7
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
