//
//  StarGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
//

import Foundation


/// Contains a list of options for creating Telegram Star giveaway
public struct StarGiveawayPaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [StarGiveawayPaymentOption]


    public init(options: [StarGiveawayPaymentOption]) {
        self.options = options
    }
}

