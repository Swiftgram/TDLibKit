//
//  GetLoginUrlInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
public struct GetLoginUrlInfo: Codable, Equatable, Hashable {

    /// Button identifier
    public let buttonId: Int64?

    /// Chat identifier of the message with the button
    public let chatId: Int64?

    /// Message identifier of the message with the button. The message must not be scheduled
    public let messageId: Int64?


    public init(
        buttonId: Int64?,
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.buttonId = buttonId
        self.chatId = chatId
        self.messageId = messageId
    }
}

