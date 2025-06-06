//
//  ForumTopicInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Contains basic information about a forum topic
public struct ForumTopicInfo: Codable, Equatable, Hashable {

    /// Identifier of the forum chat to which the topic belongs
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the topic was created
    public let creationDate: Int

    /// Identifier of the creator of the topic
    public let creatorId: MessageSender

    /// Icon of the topic
    public let icon: ForumTopicIcon

    /// True, if the topic is closed
    public let isClosed: Bool

    /// True, if the topic is the General topic list
    public let isGeneral: Bool

    /// True, if the topic is hidden above the topic list and closed; for General topic only
    public let isHidden: Bool

    /// True, if the topic was created by the current user
    public let isOutgoing: Bool

    /// Message thread identifier of the topic
    public let messageThreadId: Int64

    /// Name of the topic
    public let name: String


    public init(
        chatId: Int64,
        creationDate: Int,
        creatorId: MessageSender,
        icon: ForumTopicIcon,
        isClosed: Bool,
        isGeneral: Bool,
        isHidden: Bool,
        isOutgoing: Bool,
        messageThreadId: Int64,
        name: String
    ) {
        self.chatId = chatId
        self.creationDate = creationDate
        self.creatorId = creatorId
        self.icon = icon
        self.isClosed = isClosed
        self.isGeneral = isGeneral
        self.isHidden = isHidden
        self.isOutgoing = isOutgoing
        self.messageThreadId = messageThreadId
        self.name = name
    }
}

