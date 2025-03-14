//
//  StarGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
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

