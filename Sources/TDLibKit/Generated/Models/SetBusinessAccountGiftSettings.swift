//
//  SetBusinessAccountGiftSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-fa8294b4
//  https://github.com/tdlib/td/tree/fa8294b4
//

import Foundation


/// Changes settings for gift receiving of a business account; for bots only
public struct SetBusinessAccountGiftSettings: Codable, Equatable, Hashable {

    /// Unique identifier of business connection
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

