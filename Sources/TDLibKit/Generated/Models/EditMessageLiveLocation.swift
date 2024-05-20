//
//  EditMessageLiveLocation.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side
public struct EditMessageLiveLocation: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// The new direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
    public let heading: Int?

    /// New time relative to the message send date, for which the location can be updated, in seconds. If 0x7FFFFFFF specified, then the location can be updated forever. Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must remain in the next 90 days. Pass 0 to keep the current live_period
    public let livePeriod: Int?

    /// New location content of the message; pass null to stop sharing the live location
    public let location: Location?

    /// Identifier of the message
    public let messageId: Int64?

    /// The new maximum distance for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled
    public let proximityAlertRadius: Int?

    /// The new message reply markup; pass null if none; for bots only
    public let replyMarkup: ReplyMarkup?


    public init(
        chatId: Int64?,
        heading: Int?,
        livePeriod: Int?,
        location: Location?,
        messageId: Int64?,
        proximityAlertRadius: Int?,
        replyMarkup: ReplyMarkup?
    ) {
        self.chatId = chatId
        self.heading = heading
        self.livePeriod = livePeriod
        self.location = location
        self.messageId = messageId
        self.proximityAlertRadius = proximityAlertRadius
        self.replyMarkup = replyMarkup
    }
}

