//
//  DisplayUpgradedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Shows an upgraded gift from the TON wallet of the current user on a profile page or hides it from all profile pages; the gift remains in the wallet
public struct DisplayUpgradedGift: Codable, Equatable, Hashable {

    /// Unique name of the upgraded gift
    public let name: String?

    /// Identifier of the current user or a channel chat owned by the current user on whose profile page the gift will be shown; pass null to hide the gift from all profile pages
    public let ownerId: MessageSender?


    public init(
        name: String?,
        ownerId: MessageSender?
    ) {
        self.name = name
        self.ownerId = ownerId
    }
}

