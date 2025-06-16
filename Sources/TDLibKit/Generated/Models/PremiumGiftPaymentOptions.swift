//
//  PremiumGiftPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
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

