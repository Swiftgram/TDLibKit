//
//  StartLiveStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Starts a new live story on behalf of a chat; requires can_post_stories administrator right for channel chats
public struct StartLiveStory: Codable, Equatable, Hashable {

    /// Identifier of the chat that will start the live story. Pass Saved Messages chat identifier when starting a live story on behalf of the current user, or a channel chat identifier
    public let chatId: Int64?

    /// Pass true to allow viewers of the story to send messages
    public let enableMessages: Bool?

    /// Pass true to create an RTMP stream instead of an ordinary group call
    public let isRtmpStream: Bool?

    /// The minimum number of Telegram Stars that must be paid by viewers for each sent message to the call; 0-getOption("paid_group_call_message_star_count_max")
    public let paidMessageStarCount: Int64?

    /// The privacy settings for the story; ignored for stories posted on behalf of channel chats
    public let privacySettings: StoryPrivacySettings?

    /// Pass true if the content of the story must be protected from screenshotting
    public let protectContent: Bool?


    public init(
        chatId: Int64?,
        enableMessages: Bool?,
        isRtmpStream: Bool?,
        paidMessageStarCount: Int64?,
        privacySettings: StoryPrivacySettings?,
        protectContent: Bool?
    ) {
        self.chatId = chatId
        self.enableMessages = enableMessages
        self.isRtmpStream = isRtmpStream
        self.paidMessageStarCount = paidMessageStarCount
        self.privacySettings = privacySettings
        self.protectContent = protectContent
    }
}

