//
//  ReportStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Reports a story to the Telegram moderators
public struct ReportStory: Codable, Equatable, Hashable {

    /// Option identifier chosen by the user; leave empty for the initial request
    public let optionId: Data?

    /// The identifier of the story to report
    public let storyId: Int?

    /// The identifier of the poster of the story to report
    public let storyPosterChatId: Int64?

    /// Additional report details; 0-1024 characters; leave empty for the initial request
    public let text: String?


    public init(
        optionId: Data?,
        storyId: Int?,
        storyPosterChatId: Int64?,
        text: String?
    ) {
        self.optionId = optionId
        self.storyId = storyId
        self.storyPosterChatId = storyPosterChatId
        self.text = text
    }
}

