//
//  SetMenuButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.40-22d49d5b
//  https://github.com/tdlib/td/tree/22d49d5b
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

