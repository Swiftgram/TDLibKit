//
//  ReplaceVideoChatRtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-d961806b
//  https://github.com/tdlib/td/tree/d961806b
//

import Foundation


/// Replaces the current RTMP URL for streaming to the chat; requires owner privileges
public struct ReplaceVideoChatRtmpUrl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

