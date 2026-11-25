//
//  GetRepliedMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Returns information about a non-bundled message that is replied to by a given message. Also returns the pinned message for messagePinMessage, the game message for messageGameScore, the invoice message for messagePaymentSuccessful, the message with a previously set same background for messageChatSetBackground, the giveaway message for messageGiveawayCompleted, the checklist message for messageChecklistTasksDone and messageChecklistTasksAdded, the message with suggested post information for messageSuggestedPostApprovalFailed, messageSuggestedPostApproved, messageSuggestedPostDeclined, messageSuggestedPostPaid, and messageSuggestedPostRefunded, the message with the regular gift that was upgraded for messageUpgradedGift with origin of the type upgradedGiftOriginUpgrade, the message with the gift purchase offer for messageUpgradedGiftPurchaseOfferRejected and messageUpgradedGiftOnChainPurchaseOffer, the message with the request to disable content protection for messageChatHasProtectedContentToggled, the message with the poll for messagePollOptionAdded and messagePollOptionDeleted, and the topic creation message for topic messages without a non-bundled replied-to message. Returns a 404 error if the message doesn't exist
public struct GetRepliedMessage: Codable, Equatable, Hashable {

    /// Identifier of the chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the reply message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

