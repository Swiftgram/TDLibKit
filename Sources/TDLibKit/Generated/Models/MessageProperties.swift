//
//  MessageProperties.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-c684471b
//  https://github.com/tdlib/td/tree/c684471b
//

import Foundation


/// Contains properties of a message and describes actions that can be done with the message right now
public struct MessageProperties: Codable, Equatable, Hashable {

    /// True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options
    public let canBeCopiedToSecretChat: Bool

    /// True, if the message can be deleted for all users using the method deleteMessages with revoke == true
    public let canBeDeletedForAllUsers: Bool

    /// True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false
    public let canBeDeletedOnlyForSelf: Bool

    /// True, if the message can be edited using the methods editMessageText, editMessageMedia, editMessageCaption, or editMessageReplyMarkup. For live location and poll messages this fields shows whether editMessageLiveLocation or stopPoll can be used with this message
    public let canBeEdited: Bool

    /// True, if the message can be forwarded using inputMessageForwarded or forwardMessages
    public let canBeForwarded: Bool

    /// True, if the message can be paid using inputInvoiceMessage
    public let canBePaid: Bool

    /// True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage
    public let canBePinned: Bool

    /// True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage
    public let canBeReplied: Bool

    /// True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage
    public let canBeRepliedInAnotherChat: Bool

    /// True, if content of the message can be saved locally or copied using inputMessageForwarded or forwardMessages with copy options
    public let canBeSaved: Bool

    /// True, if the message can be shared in a story using inputStoryAreaTypeMessage
    public let canBeSharedInStory: Bool

    /// True, if scheduling state of the message can be edited
    public let canEditSchedulingState: Bool

    /// True, if code for message embedding can be received using getMessageEmbeddingCode
    public let canGetEmbeddingCode: Bool

    /// True, if a link can be generated for the message using getMessageLink
    public let canGetLink: Bool

    /// True, if media timestamp links can be generated for media timestamp entities in the message text, caption or link preview description using getMessageLink
    public let canGetMediaTimestampLinks: Bool

    /// True, if information about the message thread is available through getMessageThread and getMessageThreadHistory
    public let canGetMessageThread: Bool

    /// True, if read date of the message can be received through getMessageReadDate
    public let canGetReadDate: Bool

    /// True, if message statistics are available through getMessageStatistics and message forwards can be received using getMessagePublicForwards
    public let canGetStatistics: Bool

    /// True, if chat members already viewed the message can be received through getMessageViewers
    public let canGetViewers: Bool

    /// True, if speech can be recognized for the message through recognizeSpeech
    public let canRecognizeSpeech: Bool

    /// True, if the message can be reported using reportChat
    public let canReportChat: Bool

    /// True, if reactions on the message can be reported through reportMessageReactions
    public let canReportReactions: Bool

    /// True, if the message can be reported using reportSupergroupSpam
    public let canReportSupergroupSpam: Bool

    /// True, if fact check for the message can be changed through setMessageFactCheck
    public let canSetFactCheck: Bool

    /// True, if message statistics must be available from context menu of the message
    public let needShowStatistics: Bool


    public init(
        canBeCopiedToSecretChat: Bool,
        canBeDeletedForAllUsers: Bool,
        canBeDeletedOnlyForSelf: Bool,
        canBeEdited: Bool,
        canBeForwarded: Bool,
        canBePaid: Bool,
        canBePinned: Bool,
        canBeReplied: Bool,
        canBeRepliedInAnotherChat: Bool,
        canBeSaved: Bool,
        canBeSharedInStory: Bool,
        canEditSchedulingState: Bool,
        canGetEmbeddingCode: Bool,
        canGetLink: Bool,
        canGetMediaTimestampLinks: Bool,
        canGetMessageThread: Bool,
        canGetReadDate: Bool,
        canGetStatistics: Bool,
        canGetViewers: Bool,
        canRecognizeSpeech: Bool,
        canReportChat: Bool,
        canReportReactions: Bool,
        canReportSupergroupSpam: Bool,
        canSetFactCheck: Bool,
        needShowStatistics: Bool
    ) {
        self.canBeCopiedToSecretChat = canBeCopiedToSecretChat
        self.canBeDeletedForAllUsers = canBeDeletedForAllUsers
        self.canBeDeletedOnlyForSelf = canBeDeletedOnlyForSelf
        self.canBeEdited = canBeEdited
        self.canBeForwarded = canBeForwarded
        self.canBePaid = canBePaid
        self.canBePinned = canBePinned
        self.canBeReplied = canBeReplied
        self.canBeRepliedInAnotherChat = canBeRepliedInAnotherChat
        self.canBeSaved = canBeSaved
        self.canBeSharedInStory = canBeSharedInStory
        self.canEditSchedulingState = canEditSchedulingState
        self.canGetEmbeddingCode = canGetEmbeddingCode
        self.canGetLink = canGetLink
        self.canGetMediaTimestampLinks = canGetMediaTimestampLinks
        self.canGetMessageThread = canGetMessageThread
        self.canGetReadDate = canGetReadDate
        self.canGetStatistics = canGetStatistics
        self.canGetViewers = canGetViewers
        self.canRecognizeSpeech = canRecognizeSpeech
        self.canReportChat = canReportChat
        self.canReportReactions = canReportReactions
        self.canReportSupergroupSpam = canReportSupergroupSpam
        self.canSetFactCheck = canSetFactCheck
        self.needShowStatistics = needShowStatistics
    }
}

