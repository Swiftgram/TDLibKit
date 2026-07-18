//
//  GetPreparedKeyboardButton.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
//

import Foundation


/// Returns a keyboard button prepared by the bot for the user. The button will be of the type keyboardButtonTypeRequestUsers, keyboardButtonTypeRequestChat, or keyboardButtonTypeRequestManagedBot
public struct GetPreparedKeyboardButton: Codable, Equatable, Hashable {

    /// Identifier of the bot that created the button
    public let botUserId: Int64?

    /// Identifier of the prepared button
    public let preparedButtonId: String?


    public init(
        botUserId: Int64?,
        preparedButtonId: String?
    ) {
        self.botUserId = botUserId
        self.preparedButtonId = preparedButtonId
    }
}

