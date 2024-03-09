//
//  ApplyPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.26-b1b33cf4
//  https://github.com/tdlib/td/tree/b1b33cf4
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

