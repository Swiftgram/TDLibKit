//
//  SetMenuButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Sets menu button for the given user or for all users; for bots only
public struct SetMenuButton: Codable, Equatable, Hashable {

    /// New menu button
    public let menuButton: BotMenuButton?

    /// Identifier of the user or 0 to set menu button for all users
    public let userId: Int64?


    public init(
        menuButton: BotMenuButton?,
        userId: Int64?
    ) {
        self.menuButton = menuButton
        self.userId = userId
    }
}

