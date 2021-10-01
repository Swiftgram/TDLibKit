//
//  CreateVoiceChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Creates a voice chat (a group call bound to a chat). Available only for basic groups, supergroups and channels; requires can_manage_voice_chats rights
public struct CreateVoiceChat: Codable {

    /// Chat identifier, in which the voice chat will be created
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 to start the voice chat immediately. The date must be at least 10 seconds and at most 8 days in the future
    public let startDate: Int

    /// Group call title; if empty, chat title will be used
    public let title: String


    public init(
        chatId: Int64,
        startDate: Int,
        title: String
    ) {
        self.chatId = chatId
        self.startDate = startDate
        self.title = title
    }
}

