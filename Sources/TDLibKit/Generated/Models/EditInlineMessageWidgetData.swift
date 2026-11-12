//
//  EditInlineMessageWidgetData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Edits data of a widget in an inline message sent via the bot; for bots only
public struct EditInlineMessageWidgetData: Codable, Equatable, Hashable {

    /// New data of the widget, which is specific to the chat; ignored if edit_chat_data is false
    public let chatData: String?

    /// Pass true to edit data of the widget, which is specific to the chat
    public let editChatData: Bool?

    /// Pass true to edit public data of the widget
    public let editPublicData: Bool?

    /// Inline message identifier
    public let inlineMessageId: String?

    /// New public data of the widget; ignored if edit_public_data is false
    public let publicData: String?


    public init(
        chatData: String?,
        editChatData: Bool?,
        editPublicData: Bool?,
        inlineMessageId: String?,
        publicData: String?
    ) {
        self.chatData = chatData
        self.editChatData = editChatData
        self.editPublicData = editPublicData
        self.inlineMessageId = inlineMessageId
        self.publicData = publicData
    }
}

