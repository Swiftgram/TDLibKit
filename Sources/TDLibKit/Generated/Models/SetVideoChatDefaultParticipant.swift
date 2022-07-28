//
//  SetVideoChatDefaultParticipant.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Changes default participant identifier, on whose behalf a video chat in the chat will be joined
public struct SetVideoChatDefaultParticipant: Codable, Equatable {

    /// Chat identifier
    public let chatId: Int64?

    /// Default group call participant identifier to join the video chats
    public let defaultParticipantId: MessageSender?


    public init(
        chatId: Int64?,
        defaultParticipantId: MessageSender?
    ) {
        self.chatId = chatId
        self.defaultParticipantId = defaultParticipantId
    }
}

