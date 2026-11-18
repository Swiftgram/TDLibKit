//
//  ReplaceVideoChatRtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-fe61d641
//  https://github.com/tdlib/td/tree/fe61d641
//

import Foundation


/// Replaces the current RTMP URL for streaming to the video chat of a chat; requires owner privileges in the chat
public struct ReplaceVideoChatRtmpUrl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

