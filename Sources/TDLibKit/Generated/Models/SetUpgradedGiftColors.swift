//
//  SetUpgradedGiftColors.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Changes color scheme for the current user based on an owned or a hosted upgraded gift; for Telegram Premium users only
public struct SetUpgradedGiftColors: Codable, Equatable, Hashable {

    /// Identifier of the upgradedGiftColors scheme to use
    public let upgradedGiftColorsId: TdInt64?


    public init(upgradedGiftColorsId: TdInt64?) {
        self.upgradedGiftColorsId = upgradedGiftColorsId
    }
}

