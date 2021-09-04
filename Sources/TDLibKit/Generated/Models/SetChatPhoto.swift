//
//  SetChatPhoto.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
public struct SetChatPhoto: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New chat photo. Pass null to delete the chat photo
    public let photo: InputChatPhoto


    public init(
        chatId: Int64,
        photo: InputChatPhoto
    ) {
        self.chatId = chatId
        self.photo = photo
    }
}
