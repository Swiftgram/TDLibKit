//
//  GetPremiumInfoSticker.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-c684471b
//  https://github.com/tdlib/td/tree/c684471b
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

