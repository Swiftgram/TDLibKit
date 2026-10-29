//
//  ApplyPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
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

