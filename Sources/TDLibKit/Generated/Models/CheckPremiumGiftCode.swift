//
//  CheckPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.21-ec788c75
//  https://github.com/tdlib/td/tree/ec788c75
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

