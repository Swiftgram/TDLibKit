//
//  PremiumGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-42b1b825
//  https://github.com/tdlib/td/tree/42b1b825
//

import Foundation


/// Contains a list of options for creating of Telegram Premium giveaway or manual distribution of Telegram Premium among chat members
public struct PremiumGiveawayPaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [PremiumGiveawayPaymentOption]


    public init(options: [PremiumGiveawayPaymentOption]) {
        self.options = options
    }
}

