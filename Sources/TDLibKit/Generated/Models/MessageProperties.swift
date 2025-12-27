//
//  MessageProperties.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Contains properties of a message and describes actions that can be done with the message right now
public struct MessageProperties: Codable, Equatable, Hashable {

    /// True, if an offer can be added to the message using addOffer
    public let canAddOffer: Bool

    /// True, if tasks can be added to the message's checklist using addChecklistTasks if the current user has Telegram Premium subscription
    public let canAddTasks: Bool

    /// True, if the message is a suggested post that can be approved by the user using approveSuggestedPost
    public let canBeApproved: Bool

    /// True, if content of the message can be copied using inputMessageForwarded or forwardMessages with copy options
    public let canBeCopied: Bool

    /// True, if content of the message can be copied to a secret chat using inputMessageForwarded or forwardMessages with copy options
    public let canBeCopiedToSecretChat: Bool

    /// True, if the message is a suggested post that can be declined by the user using declineSuggestedPost
    public let canBeDeclined: Bool

    /// True, if the message can be deleted for all users using the method deleteMessages with revoke == true
    public let canBeDeletedForAllUsers: Bool

    /// True, if the message can be deleted only for the current user while other users will continue to see it using the method deleteMessages with revoke == false
    public let canBeDeletedOnlyForSelf: Bool

    /// True, if the message can be edited using the methods editMessageText, editMessageCaption, or editMessageReplyMarkup. For live location, poll, and checklist messages this fields shows whether editMessageLiveLocation, stopPoll, or editMessageChecklist respectively can be used with this message
    public let canBeEdited: Bool

    /// True, if the message can be forwarded using inputMessageForwarded or forwardMessages without copy options
    public let canBeForwarded: Bool

    /// True, if the message can be paid using inputInvoiceMessage
    public let canBePaid: Bool

    /// True, if the message can be pinned or unpinned in the chat using pinChatMessage or unpinChatMessage
    public let canBePinned: Bool

    /// True, if the message can be replied in the same chat and forum topic using inputMessageReplyToMessage
    public let canBeReplied: Bool

    /// True, if the message can be replied in another chat or forum topic using inputMessageReplyToExternalMessage
    public let canBeRepliedInAnotherChat: Bool

    /// True, if content of the message can be saved locally
    public let canBeSaved: Bool

    /// True, if the message can be shared in a story using inputStoryAreaTypeMessage
    public let canBeSharedInStory: Bool

    /// True, if the message can be edited using the method editMessageMedia
    public let canEditMedia: Bool

    /// True, if scheduling state of the message can be edited
    public let canEditSchedulingState: Bool

    /// True, if another price or post send time can be suggested using addOffer
    public let canEditSuggestedPostInfo: Bool

    /// True, if author of the message sent on behalf of a chat can be received through getMessageAuthor
    public let canGetAuthor: Bool

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

    /// True, if advertisements for video of the message can be received though getVideoMessageAdvertisements
    public let canGetVideoAdvertisements: Bool

    /// True, if chat members already viewed the message can be received through getMessageViewers
    public let canGetViewers: Bool

    /// True, if tasks can be marked as done or not done in the message's checklist using markChecklistTasksAsDone if the current user has Telegram Premium subscription
    public let canMarkTasksAsDone: Bool

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
        canAddOffer: Bool,
        canAddTasks: Bool,
        canBeApproved: Bool,
        canBeCopied: Bool,
        canBeCopiedToSecretChat: Bool,
        canBeDeclined: Bool,
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
        canEditMedia: Bool,
        canEditSchedulingState: Bool,
        canEditSuggestedPostInfo: Bool,
        canGetAuthor: Bool,
        canGetEmbeddingCode: Bool,
        canGetLink: Bool,
        canGetMediaTimestampLinks: Bool,
        canGetMessageThread: Bool,
        canGetReadDate: Bool,
        canGetStatistics: Bool,
        canGetVideoAdvertisements: Bool,
        canGetViewers: Bool,
        canMarkTasksAsDone: Bool,
        canRecognizeSpeech: Bool,
        canReportChat: Bool,
        canReportReactions: Bool,
        canReportSupergroupSpam: Bool,
        canSetFactCheck: Bool,
        needShowStatistics: Bool
    ) {
        self.canAddOffer = canAddOffer
        self.canAddTasks = canAddTasks
        self.canBeApproved = canBeApproved
        self.canBeCopied = canBeCopied
        self.canBeCopiedToSecretChat = canBeCopiedToSecretChat
        self.canBeDeclined = canBeDeclined
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
        self.canEditMedia = canEditMedia
        self.canEditSchedulingState = canEditSchedulingState
        self.canEditSuggestedPostInfo = canEditSuggestedPostInfo
        self.canGetAuthor = canGetAuthor
        self.canGetEmbeddingCode = canGetEmbeddingCode
        self.canGetLink = canGetLink
        self.canGetMediaTimestampLinks = canGetMediaTimestampLinks
        self.canGetMessageThread = canGetMessageThread
        self.canGetReadDate = canGetReadDate
        self.canGetStatistics = canGetStatistics
        self.canGetVideoAdvertisements = canGetVideoAdvertisements
        self.canGetViewers = canGetViewers
        self.canMarkTasksAsDone = canMarkTasksAsDone
        self.canRecognizeSpeech = canRecognizeSpeech
        self.canReportChat = canReportChat
        self.canReportReactions = canReportReactions
        self.canReportSupergroupSpam = canReportSupergroupSpam
        self.canSetFactCheck = canSetFactCheck
        self.needShowStatistics = needShowStatistics
    }
}

