//
//  StarGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
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

