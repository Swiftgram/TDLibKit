//
//  PremiumGiftCodePaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
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

