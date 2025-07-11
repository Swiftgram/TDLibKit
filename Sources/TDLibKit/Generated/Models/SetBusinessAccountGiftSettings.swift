//
//  SetBusinessAccountGiftSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
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

