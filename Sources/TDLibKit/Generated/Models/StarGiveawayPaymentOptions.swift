//
//  StarGiveawayPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
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

