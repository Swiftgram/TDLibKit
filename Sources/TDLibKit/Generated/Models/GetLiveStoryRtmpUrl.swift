//
//  GetLiveStoryRtmpUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Returns RTMP URL for streaming to a live story; requires can_post_stories administrator right for channel chats
public struct GetLiveStoryRtmpUrl: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?


    public init(chatId: Int64?) {
        self.chatId = chatId
    }
}

