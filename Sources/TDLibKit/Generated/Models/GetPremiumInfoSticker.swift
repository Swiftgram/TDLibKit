//
//  GetPremiumInfoSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Returns the sticker to be used as representation of the Telegram Premium subscription
public struct GetPremiumInfoSticker: Codable, Equatable, Hashable {

    /// Number of months the Telegram Premium subscription will be active
    public let monthCount: Int?


    public init(monthCount: Int?) {
        self.monthCount = monthCount
    }
}

