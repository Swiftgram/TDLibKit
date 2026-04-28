//
//  ShareUsersWithBot.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8fc2344f
//  https://github.com/tdlib/td/tree/8fc2344f
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

