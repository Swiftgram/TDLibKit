//
//  ForumTopicInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Contains basic information about a forum topic
public struct ForumTopicInfo: Codable, Equatable, Hashable {

    /// Identifier of a forum supergroup chat or a chat with a bot to which the topic belongs
    public let chatId: Int64

    /// Point in time (Unix timestamp) when the topic was created
    public let creationDate: Int

    /// Identifier of the creator of the topic
    public let creatorId: MessageSender

    /// Forum topic identifier of the topic
    public let forumTopicId: Int

    /// Icon of the topic
    public let icon: ForumTopicIcon

    /// True, if the topic is closed. If the topic is closed, then the user must have can_manage_topics administrator right in the supergroup or must be the creator of the topic to send messages there
    public let isClosed: Bool

    /// True, if the topic is the General topic
    public let isGeneral: Bool

    /// True, if the topic is hidden above the topic list and closed; for General topic only
    public let isHidden: Bool

    /// True, if the name of the topic wasn't added explicitly
    public let isNameImplicit: Bool

    /// True, if the topic was created by the current user
    public let isOutgoing: Bool

    /// Name of the topic
    public let name: String


    public init(
        chatId: Int64,
        creationDate: Int,
        creatorId: MessageSender,
        forumTopicId: Int,
        icon: ForumTopicIcon,
        isClosed: Bool,
        isGeneral: Bool,
        isHidden: Bool,
        isNameImplicit: Bool,
        isOutgoing: Bool,
        name: String
    ) {
        self.chatId = chatId
        self.creationDate = creationDate
        self.creatorId = creatorId
        self.forumTopicId = forumTopicId
        self.icon = icon
        self.isClosed = isClosed
        self.isGeneral = isGeneral
        self.isHidden = isHidden
        self.isNameImplicit = isNameImplicit
        self.isOutgoing = isOutgoing
        self.name = name
    }
}

