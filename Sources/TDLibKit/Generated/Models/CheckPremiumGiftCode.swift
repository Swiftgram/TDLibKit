//
//  CheckPremiumGiftCode.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
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

