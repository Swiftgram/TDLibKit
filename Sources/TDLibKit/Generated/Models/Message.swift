//
//  Message.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a message
public struct Message: Codable, Equatable, Hashable, Identifiable {

    /// For channel posts and anonymous group messages, optional author signature
    public let authorSignature: String

    /// Time left before the message will be automatically deleted by message_auto_delete_time setting of the chat, in seconds; 0 if never
    public let autoDeleteIn: Double

    /// True, if the message can be deleted for all users
    public let canBeDeletedForAllUsers: Bool

    /// True, if the message can be deleted only for the current user while other users will continue to see it
    public let canBeDeletedOnlyForSelf: Bool

    /// True, if the message can be edited. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message by the application
    public let canBeEdited: Bool

    /// True, if the message can be forwarded
    public let canBeForwarded: Bool

    /// True, if the message can be replied in another chat or topic
    public let canBeRepliedInAnotherChat: Bool

    /// True, if content of the message can be saved locally or copied
    public let canBeSaved: Bool

    /// True, if the list of added reactions is available through getMessageAddedReactions
    public let canGetAddedReactions: Bool

    /// True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through getMessageLink
    public let canGetMediaTimestampLinks: Bool

    /// True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
    public let canGetMessageThread: Bool

    /// True, if read date of the message can be received through getMessageReadDate
    public let canGetReadDate: Bool

    /// True, if the message statistics are available through getMessageStatistics
    public let canGetStatistics: Bool

    /// True, if chat members already viewed the message can be received through getMessageViewers
    public let canGetViewers: Bool

    /// True, if reactions on the message can be reported through reportMessageReactions
    public let canReportReactions: Bool

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

    /// Information about the initial message sender; may be null if none or unknown
    public let forwardInfo: MessageForwardInfo?

    /// True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message
    public let hasTimestampedMedia: Bool

    /// Message identifier; unique for the chat to which the message belongs
    public let id: Int64

    /// Information about the initial message for messages created with importMessages; may be null if the message isn't imported
    public let importInfo: MessageImportInfo?

    /// Information about interactions with the message; may be null if none
    public let interactionInfo: MessageInteractionInfo?

    /// True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts
    public let isChannelPost: Bool

    /// True, if the message was sent because of a scheduled action by the message sender, for example, as away, or greeting service message
    public let isFromOffline: Bool

    /// True, if the message is outgoing
    public let isOutgoing: Bool

    /// True, if the message is pinned
    public let isPinned: Bool

    /// True, if the message is a forum topic message
    public let isTopicMessage: Bool

    /// Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums
    public let mediaAlbumId: TdInt64

    /// If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs
    public let messageThreadId: Int64

    /// Reply markup for the message; may be null if none
    public let replyMarkup: ReplyMarkup?

    /// Information about the message or the story this message is replying to; may be null if none
    public let replyTo: MessageReplyTo?

    /// If non-empty, contains a human-readable description of the reason why access to this message must be restricted
    public let restrictionReason: String

    /// Identifier of the Saved Messages topic for the message; 0 for messages not from Saved Messages
    public let savedMessagesTopicId: Int64

    /// The scheduling state of the message; may be null if the message isn't scheduled
    public let schedulingState: MessageSchedulingState?

    /// Time left before the message self-destruct timer expires, in seconds; 0 if self-destruction isn't scheduled yet
    public let selfDestructIn: Double

    /// The message's self-destruct type; may be null if none
    public let selfDestructType: MessageSelfDestructType?

    /// Number of times the sender of the message boosted the supergroup at the time the message was sent; 0 if none or unknown. For messages sent by the current user, supergroupFullInfo.my_boost_count must be used instead
    public let senderBoostCount: Int

    /// If non-zero, the user identifier of the business bot that sent this message
    public let senderBusinessBotUserId: Int64

    /// Identifier of the sender of the message
    public let senderId: MessageSender

    /// The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
    public let sendingState: MessageSendingState?

    /// Information about unread reactions added to the message
    public let unreadReactions: [UnreadReaction]

    /// If non-zero, the user identifier of the inline bot through which this message was sent
    public let viaBotUserId: Int64


    public init(
        authorSignature: String,
        autoDeleteIn: Double,
        canBeDeletedForAllUsers: Bool,
        canBeDeletedOnlyForSelf: Bool,
        canBeEdited: Bool,
        canBeForwarded: Bool,
        canBeRepliedInAnotherChat: Bool,
        canBeSaved: Bool,
        canGetAddedReactions: Bool,
        canGetMediaTimestampLinks: Bool,
        canGetMessageThread: Bool,
        canGetReadDate: Bool,
        canGetStatistics: Bool,
        canGetViewers: Bool,
        canReportReactions: Bool,
        chatId: Int64,
        containsUnreadMention: Bool,
        content: MessageContent,
        date: Int,
        editDate: Int,
        forwardInfo: MessageForwardInfo?,
        hasTimestampedMedia: Bool,
        id: Int64,
        importInfo: MessageImportInfo?,
        interactionInfo: MessageInteractionInfo?,
        isChannelPost: Bool,
        isFromOffline: Bool,
        isOutgoing: Bool,
        isPinned: Bool,
        isTopicMessage: Bool,
        mediaAlbumId: TdInt64,
        messageThreadId: Int64,
        replyMarkup: ReplyMarkup?,
        replyTo: MessageReplyTo?,
        restrictionReason: String,
        savedMessagesTopicId: Int64,
        schedulingState: MessageSchedulingState?,
        selfDestructIn: Double,
        selfDestructType: MessageSelfDestructType?,
        senderBoostCount: Int,
        senderBusinessBotUserId: Int64,
        senderId: MessageSender,
        sendingState: MessageSendingState?,
        unreadReactions: [UnreadReaction],
        viaBotUserId: Int64
    ) {
        self.authorSignature = authorSignature
        self.autoDeleteIn = autoDeleteIn
        self.canBeDeletedForAllUsers = canBeDeletedForAllUsers
        self.canBeDeletedOnlyForSelf = canBeDeletedOnlyForSelf
        self.canBeEdited = canBeEdited
        self.canBeForwarded = canBeForwarded
        self.canBeRepliedInAnotherChat = canBeRepliedInAnotherChat
        self.canBeSaved = canBeSaved
        self.canGetAddedReactions = canGetAddedReactions
        self.canGetMediaTimestampLinks = canGetMediaTimestampLinks
        self.canGetMessageThread = canGetMessageThread
        self.canGetReadDate = canGetReadDate
        self.canGetStatistics = canGetStatistics
        self.canGetViewers = canGetViewers
        self.canReportReactions = canReportReactions
        self.chatId = chatId
        self.containsUnreadMention = containsUnreadMention
        self.content = content
        self.date = date
        self.editDate = editDate
        self.forwardInfo = forwardInfo
        self.hasTimestampedMedia = hasTimestampedMedia
        self.id = id
        self.importInfo = importInfo
        self.interactionInfo = interactionInfo
        self.isChannelPost = isChannelPost
        self.isFromOffline = isFromOffline
        self.isOutgoing = isOutgoing
        self.isPinned = isPinned
        self.isTopicMessage = isTopicMessage
        self.mediaAlbumId = mediaAlbumId
        self.messageThreadId = messageThreadId
        self.replyMarkup = replyMarkup
        self.replyTo = replyTo
        self.restrictionReason = restrictionReason
        self.savedMessagesTopicId = savedMessagesTopicId
        self.schedulingState = schedulingState
        self.selfDestructIn = selfDestructIn
        self.selfDestructType = selfDestructType
        self.senderBoostCount = senderBoostCount
        self.senderBusinessBotUserId = senderBusinessBotUserId
        self.senderId = senderId
        self.sendingState = sendingState
        self.unreadReactions = unreadReactions
        self.viaBotUserId = viaBotUserId
    }
}

