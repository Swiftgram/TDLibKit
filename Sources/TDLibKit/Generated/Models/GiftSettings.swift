//
//  GiftSettings.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Contains settings for gift receiving for a user
public struct GiftSettings: Codable, Equatable, Hashable {

    /// Types of gifts accepted by the user; for Telegram Premium users only
    public let acceptedGiftTypes: AcceptedGiftTypes

    /// True, if a button for sending a gift to the user or by the user must always be shown in the input field
    public let showGiftButton: Bool


    public init(
        acceptedGiftTypes: AcceptedGiftTypes,
        showGiftButton: Bool
    ) {
        self.acceptedGiftTypes = acceptedGiftTypes
        self.showGiftButton = showGiftButton
    }
}

