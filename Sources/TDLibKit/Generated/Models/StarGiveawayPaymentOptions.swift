//
//  StarGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Contains a list of options for creating of Telegram Star giveaway
public struct StarGiveawayPaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [StarGiveawayPaymentOption]


    public init(options: [StarGiveawayPaymentOption]) {
        self.options = options
    }
}

