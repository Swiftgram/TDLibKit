//
//  SetChatActiveStoriesList.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Changes story list in which stories from the chat are shown
public struct SetChatActiveStoriesList: Codable, Equatable, Hashable {

    /// Identifier of the chat that posted stories
    public let chatId: Int64?

    /// New list for active stories posted by the chat
    public let storyList: StoryList?


    public init(
        chatId: Int64?,
        storyList: StoryList?
    ) {
        self.chatId = chatId
        self.storyList = storyList
    }
}

