//
//  SetBusinessAccountGiftSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Changes settings for gift receiving of a business account; for bots only
public struct SetBusinessAccountGiftSettings: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection
    public let businessConnectionId: String?

    /// The new settings
    public let settings: GiftSettings?


    public init(
        businessConnectionId: String?,
        settings: GiftSettings?
    ) {
        self.businessConnectionId = businessConnectionId
        self.settings = settings
    }
}

