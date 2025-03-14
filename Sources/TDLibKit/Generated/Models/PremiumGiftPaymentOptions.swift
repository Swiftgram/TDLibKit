//
//  PremiumGiftPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Contains a list of options for gifting Telegram Premium to a user
public struct PremiumGiftPaymentOptions: Codable, Equatable, Hashable {

    /// The list of options sorted by Telegram Premium subscription duration
    public let options: [PremiumGiftPaymentOption]


    public init(options: [PremiumGiftPaymentOption]) {
        self.options = options
    }
}

