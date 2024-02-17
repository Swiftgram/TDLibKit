//
//  PremiumGiftCodePaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-d0ff90bb
//  https://github.com/tdlib/td/tree/d0ff90bb
//

import Foundation


/// Contains a list of options for creating Telegram Premium gift codes
public struct PremiumGiftCodePaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [PremiumGiftCodePaymentOption]


    public init(options: [PremiumGiftCodePaymentOption]) {
        self.options = options
    }
}

