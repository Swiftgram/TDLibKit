//
//  ApplyPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Applies a Telegram Premium gift code
public struct ApplyPremiumGiftCode: Codable, Equatable, Hashable {

    /// The code to apply
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

