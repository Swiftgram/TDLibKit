//
//  GetStoryStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns detailed statistics about a story. Can be used only if story.can_get_statistics == true
public struct GetStoryStatistics: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?

    /// Story identifier
    public let storyId: Int?


    public init(
        chatId: Int64?,
        isDark: Bool?,
        storyId: Int?
    ) {
        self.chatId = chatId
        self.isDark = isDark
        self.storyId = storyId
    }
}

