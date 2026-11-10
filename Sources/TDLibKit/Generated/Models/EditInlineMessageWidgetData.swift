//
//  EditInlineMessageWidgetData.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
//

import Foundation


/// Edits data of a widget in an inline message sent via the bot; for bots only
public struct EditInlineMessageWidgetData: Codable, Equatable, Hashable {

    /// New data of the widget, which is specific to the chat; must not contain zero character; ignored if edit_chat_data is false
    public let chatData: String?

    /// Pass true to edit data of the widget, which is specific to the chat
    public let editChatData: Bool?

    /// Pass true to edit public data of the widget
    public let editPublicData: Bool?

    /// Inline message identifier
    public let inlineMessageId: String?

    /// New public data of the widget; must not contain zero character; ignored if edit_public_data is false
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

