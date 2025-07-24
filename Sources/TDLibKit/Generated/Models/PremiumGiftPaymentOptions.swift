//
//  PremiumGiftPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

