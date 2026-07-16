//
//  ShareUsersWithBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
//

import Foundation


/// Shares users after pressing a keyboardButtonTypeRequestUsers button with the bot
public struct ShareUsersWithBot: Codable, Equatable, Hashable {

    /// Identifier of the button
    public let buttonId: Int?

    /// Pass true to check that the users can be shared by the button instead of actually sharing them
    public let onlyCheck: Bool?

    /// Identifiers of the shared users
    public let sharedUserIds: [Int64]?

    /// Source of the button
    public let source: KeyboardButtonSource?


    public init(
        buttonId: Int?,
        onlyCheck: Bool?,
        sharedUserIds: [Int64]?,
        source: KeyboardButtonSource?
    ) {
        self.buttonId = buttonId
        self.onlyCheck = onlyCheck
        self.sharedUserIds = sharedUserIds
        self.source = source
    }
}

