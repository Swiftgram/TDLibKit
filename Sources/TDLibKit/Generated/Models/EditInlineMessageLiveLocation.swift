//
//  EditInlineMessageLiveLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Edits the content of a live location in an inline message sent via a bot; for bots only
public struct EditInlineMessageLiveLocation: Codable, Equatable, Hashable {

    /// Inline message identifier
    public let inlineMessageId: String?

    /// New live location of the message; pass null to stop sharing the live location. If the new live_period isn't set to 0x7FFFFFFF, then it must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days
    public let location: LiveLocation?

    /// The new message reply markup; pass null if none
    public let replyMarkup: ReplyMarkup?


    public init(
        inlineMessageId: String?,
        location: LiveLocation?,
        replyMarkup: ReplyMarkup?
    ) {
        self.inlineMessageId = inlineMessageId
        self.location = location
        self.replyMarkup = replyMarkup
    }
}

