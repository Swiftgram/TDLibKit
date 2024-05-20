//
//  QuickReplyMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a message that can be used for quick reply
public struct QuickReplyMessage: Codable, Equatable, Hashable, Identifiable {

    /// True, if the message can be edited
    public let canBeEdited: Bool

    /// Content of the message
    public let content: MessageContent

    /// Unique message identifier among all quick replies
    public let id: Int64

    /// Unique identifier of an album this message belongs to; 0 if none. Only audios, documents, photos and videos can be grouped together in albums
    public let mediaAlbumId: TdInt64

    /// Inline keyboard reply markup for the message; may be null if none
    public let replyMarkup: ReplyMarkup?

    /// The identifier of the quick reply message to which the message replies; 0 if none
    public let replyToMessageId: Int64

    /// The sending state of the message; may be null if the message isn't being sent and didn't fail to be sent
    public let sendingState: MessageSendingState?

    /// If non-zero, the user identifier of the bot through which this message was sent
    public let viaBotUserId: Int64


    public init(
        canBeEdited: Bool,
        content: MessageContent,
        id: Int64,
        mediaAlbumId: TdInt64,
        replyMarkup: ReplyMarkup?,
        replyToMessageId: Int64,
        sendingState: MessageSendingState?,
        viaBotUserId: Int64
    ) {
        self.canBeEdited = canBeEdited
        self.content = content
        self.id = id
        self.mediaAlbumId = mediaAlbumId
        self.replyMarkup = replyMarkup
        self.replyToMessageId = replyToMessageId
        self.sendingState = sendingState
        self.viaBotUserId = viaBotUserId
    }
}

