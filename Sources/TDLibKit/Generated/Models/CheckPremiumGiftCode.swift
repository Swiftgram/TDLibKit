//
//  CheckPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-07c1d53a
//  https://github.com/tdlib/td/tree/07c1d53a
//

import Foundation


/// Return information about a Telegram Premium gift code
public struct CheckPremiumGiftCode: Codable, Equatable, Hashable {

    /// The code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

