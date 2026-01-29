//
//  AvailableGifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
//

import Foundation


/// Contains a list of gifts that can be sent to another user or channel chat
public struct AvailableGifts: Codable, Equatable, Hashable {

    /// The list of gifts
    public let gifts: [AvailableGift]


    public init(gifts: [AvailableGift]) {
        self.gifts = gifts
    }
}

