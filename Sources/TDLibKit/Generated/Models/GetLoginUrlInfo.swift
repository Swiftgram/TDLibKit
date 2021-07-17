//
//  GetLoginUrlInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
public struct GetLoginUrlInfo: Codable {

    /// Button identifier
    public let buttonId: Int

    /// Chat identifier of the message with the button
    public let chatId: Int64

    /// Message identifier of the message with the button
    public let messageId: Int64


    public init(
        buttonId: Int,
        chatId: Int64,
        messageId: Int64
    ) {
        self.buttonId = buttonId
        self.chatId = chatId
        self.messageId = messageId
    }
}

