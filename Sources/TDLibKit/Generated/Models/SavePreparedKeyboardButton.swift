//
//  SavePreparedKeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Saves a keyboard button to be shown to the given user; for bots only
public struct SavePreparedKeyboardButton: Codable, Equatable, Hashable {

    /// The button; must be of the type keyboardButtonTypeRequestUsers, keyboardButtonTypeRequestChat, or keyboardButtonTypeRequestManagedBot
    public let button: KeyboardButton?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        button: KeyboardButton?,
        userId: Int64?
    ) {
        self.button = button
        self.userId = userId
    }
}

