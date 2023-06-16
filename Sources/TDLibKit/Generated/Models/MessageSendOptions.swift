//
//  MessageSendOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// Options to be used when a message is sent
public struct MessageSendOptions: Codable, Equatable, Hashable {

    /// Pass true to disable notification for the message
    public let disableNotification: Bool

    /// Pass true if the message is sent from the background
    public let fromBackground: Bool

    /// Pass true if the content of the message must be protected from forwarding and saving; for bots only
    public let protectContent: Bool

    /// Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
    public let schedulingState: MessageSchedulingState?

    /// Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
    public let sendingId: Int

    /// Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum
    public let updateOrderOfInstalledStickerSets: Bool


    public init(
        disableNotification: Bool,
        fromBackground: Bool,
        protectContent: Bool,
        schedulingState: MessageSchedulingState?,
        sendingId: Int,
        updateOrderOfInstalledStickerSets: Bool
    ) {
        self.disableNotification = disableNotification
        self.fromBackground = fromBackground
        self.protectContent = protectContent
        self.schedulingState = schedulingState
        self.sendingId = sendingId
        self.updateOrderOfInstalledStickerSets = updateOrderOfInstalledStickerSets
    }
}

