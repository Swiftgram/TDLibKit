//
//  ReportStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.44-28c6f2e9
//  https://github.com/tdlib/td/tree/28c6f2e9
//

import Foundation


/// Reports a story to the Telegram moderators
public struct ReportStory: Codable, Equatable, Hashable {

    /// Option identifier chosen by the user; leave empty for the initial request
    public let optionId: Data?

    /// The identifier of the story to report
    public let storyId: Int?

    /// The identifier of the sender of the story to report
    public let storySenderChatId: Int64?

    /// Additional report details; 0-1024 characters; leave empty for the initial request
    public let text: String?


    public init(
        optionId: Data?,
        storyId: Int?,
        storySenderChatId: Int64?,
        text: String?
    ) {
        self.optionId = optionId
        self.storyId = storyId
        self.storySenderChatId = storySenderChatId
        self.text = text
    }
}

