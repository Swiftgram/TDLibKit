//
//  CheckPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.65-a17f87c4
//  https://github.com/tdlib/td/tree/a17f87c4
//

import Foundation


/// Returns information about a Telegram Premium gift code
public struct CheckPremiumGiftCode: Codable, Equatable, Hashable {

    /// The code to check
    public let code: String?


    public init(code: String?) {
        self.code = code
    }
}

