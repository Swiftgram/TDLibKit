//
//  Gifts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-971684a3
//  https://github.com/tdlib/td/tree/971684a3
//

import Foundation


/// Contains a list of gifts that can be sent to another user or channel chat
public struct Gifts: Codable, Equatable, Hashable {

    /// The list of gifts
    public let gifts: [Gift]


    public init(gifts: [Gift]) {
        self.gifts = gifts
    }
}

