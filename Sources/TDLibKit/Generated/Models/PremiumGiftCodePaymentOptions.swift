//
//  PremiumGiftCodePaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
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

