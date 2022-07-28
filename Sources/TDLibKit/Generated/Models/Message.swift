//
//  Message.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Describes a message
public struct Message: Codable, Equatable {

    /// For channel posts and anonymous group messages, optional author signature
    public let authorSignature: String

    /// True, if the message can be deleted for all users
    public let canBeDeletedForAllUsers: Bool

    /// True, if the message can be deleted only for the current user while other users will continue to see it
    public let canBeDeletedOnlyForSelf: Bool

    /// True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
    public let canBeEdited: Bool

    /// True, if the message can be forwarded
    public let canBeForwarded: Bool

    /// True, if content of the message can be saved locally or copied
    public let canBeSaved: Bool

    /// True, if the list of added reactions is available through getMessageAddedReactions
    public let canGetAddedReactions: Bool

    /// True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink
    public let canGetMediaTimestampLinks: Bool

    /// True, if information about the message thread is available through getMessageThread
    public let canGetMessageThread: Bool

    /// True, if the message statistics are available through getMessageStatistics
    public let canGetStatistics: Bool

    /// True, if chat members already viewed the message can be received through getMessageViewers
    public let canGetViewers: Bool

    /// Chat identifier
    public let chatId: Int64

    /// True, if the message contains an unread mention for the current user
    public let containsUnreadMention: Bool

    /// Content of the message
    public let content: MessageContent

    /// Point in time (Unix timestamp) when the message was sent
    public let date: Int

    /// Point in time (Unix timestamp) when the message was last edited
    public let editDate: Int

    /// Information about the initial message sender; may be null
    public let forwardInfo: MessageForwardInfo?

    /// True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
    public let hasTimestampedMedia: Bool

    /// Message identifier; unique for the chat to which the message belongs
    public let id: Int64

    /// Information about interactions with the message; may be null
    public let interactionInfo: MessageInteractionInfo?

    /// True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
    public let isChannelPost: Bool

    /// True, if the message is outgoing
    public let isOutgoing: Bool

    /// True, if the message is pinned
    public let isPinned: Bool

    /// Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums
    public let mediaAlbumId: TdInt64

    /// If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
    public let messageThreadId: Int64

    /// If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id
    public let replyInChatId: Int64

    /// Reply markup for the message; may be null
    public let replyMarkup: ReplyMarkup?

    /// If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message
    public let replyToMessageId: Int64

    /// If non-empty, contains a human-readable description of the reason why access to this message must be restricted
    public let restrictionReason: String

    /// The scheduling state of the message; may be null
    public let schedulingState: MessageSchedulingState?

    /// Identifier of the sender of the message
    public let senderId: MessageSender

    /// The sending state of the message; may be null
    public let sendingState: MessageSendingState?

    /// For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
    public let ttl: Int

    /// Time left before the message expires, in seconds. If the TTL timer isn't started yet, equals to the value of the ttl field
    public let ttlExpiresIn: Double

    /// Information about unread reactions added to the message
    public let unreadReactions: [UnreadReaction]

    /// If non-zero, the user identifier of the bot through which this message was sent
    public let viaBotUserId: Int64


    public init(
        authorSignature: String,
        canBeDeletedForAllUsers: Bool,
        canBeDeletedOnlyForSelf: Bool,
        canBeEdited: Bool,
        canBeForwarded: Bool,
        canBeSaved: Bool,
        canGetAddedReactions: Bool,
        canGetMediaTimestampLinks: Bool,
        canGetMessageThread: Bool,
        canGetStatistics: Bool,
        canGetViewers: Bool,
        chatId: Int64,
        containsUnreadMention: Bool,
        content: MessageContent,
        date: Int,
        editDate: Int,
        forwardInfo: MessageForwardInfo?,
        hasTimestampedMedia: Bool,
        id: Int64,
        interactionInfo: MessageInteractionInfo?,
        isChannelPost: Bool,
        isOutgoing: Bool,
        isPinned: Bool,
        mediaAlbumId: TdInt64,
        messageThreadId: Int64,
        replyInChatId: Int64,
        replyMarkup: ReplyMarkup?,
        replyToMessageId: Int64,
        restrictionReason: String,
        schedulingState: MessageSchedulingState?,
        senderId: MessageSender,
        sendingState: MessageSendingState?,
        ttl: Int,
        ttlExpiresIn: Double,
        unreadReactions: [UnreadReaction],
        viaBotUserId: Int64
    ) {
        self.authorSignature = authorSignature
        self.canBeDeletedForAllUsers = canBeDeletedForAllUsers
        self.canBeDeletedOnlyForSelf = canBeDeletedOnlyForSelf
        self.canBeEdited = canBeEdited
        self.canBeForwarded = canBeForwarded
        self.canBeSaved = canBeSaved
        self.canGetAddedReactions = canGetAddedReactions
        self.canGetMediaTimestampLinks = canGetMediaTimestampLinks
        self.canGetMessageThread = canGetMessageThread
        self.canGetStatistics = canGetStatistics
        self.canGetViewers = canGetViewers
        self.chatId = chatId
        self.containsUnreadMention = containsUnreadMention
        self.content = content
        self.date = date
        self.editDate = editDate
        self.forwardInfo = forwardInfo
        self.hasTimestampedMedia = hasTimestampedMedia
        self.id = id
        self.interactionInfo = interactionInfo
        self.isChannelPost = isChannelPost
        self.isOutgoing = isOutgoing
        self.isPinned = isPinned
        self.mediaAlbumId = mediaAlbumId
        self.messageThreadId = messageThreadId
        self.replyInChatId = replyInChatId
        self.replyMarkup = replyMarkup
        self.replyToMessageId = replyToMessageId
        self.restrictionReason = restrictionReason
        self.schedulingState = schedulingState
        self.senderId = senderId
        self.sendingState = sendingState
        self.ttl = ttl
        self.ttlExpiresIn = ttlExpiresIn
        self.unreadReactions = unreadReactions
        self.viaBotUserId = viaBotUserId
    }
}

