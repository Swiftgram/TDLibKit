//
//  PremiumGiftCodePaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
//

import Foundation


/// Contains a list of options for creating Telegram Premium gift codes or Telegram Premium giveaway
public struct PremiumGiftCodePaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [PremiumGiftCodePaymentOption]


    public init(options: [PremiumGiftCodePaymentOption]) {
        self.options = options
    }
}

