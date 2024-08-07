//
//  ReportStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Reports a story to the Telegram moderators
public struct ReportStory: Codable, Equatable, Hashable {

    /// The reason for reporting the story
    public let reason: ReportReason?

    /// The identifier of the story to report
    public let storyId: Int?

    /// The identifier of the sender of the story to report
    public let storySenderChatId: Int64?

    /// Additional report details; 0-1024 characters
    public let text: String?


    public init(
        reason: ReportReason?,
        storyId: Int?,
        storySenderChatId: Int64?,
        text: String?
    ) {
        self.reason = reason
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
        self.text = text
    }
}

