//
//  GetVideoMessageAdvertisements.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns advertisements to be shown while a video from a message is watched. Available only if messageProperties.can_get_video_advertisements
public struct GetVideoMessageAdvertisements: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

