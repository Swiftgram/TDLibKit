//
//  EditMessageWidgetData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Edits data of a widget sent by the bot; for bots only
public struct EditMessageWidgetData: Codable, Equatable, Hashable {

    /// New data of the widget, which is specific to the chat; ignored if edit_chat_data is false
    public let chatData: String?

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Pass true to edit data of the widget, which is specific to the chat
    public let editChatData: Bool?

    /// Pass true to edit public data of the widget
    public let editPublicData: Bool?

    /// Identifier of the widget message
    public let messageId: Int64?

    /// New public data of the widget; ignored if edit_public_data is false
    public let publicData: String?


    public init(
        chatData: String?,
        chatId: Int64?,
        editChatData: Bool?,
        editPublicData: Bool?,
        messageId: Int64?,
        publicData: String?
    ) {
        self.chatData = chatData
        self.chatId = chatId
        self.editChatData = editChatData
        self.editPublicData = editPublicData
        self.messageId = messageId
        self.publicData = publicData
    }
}

