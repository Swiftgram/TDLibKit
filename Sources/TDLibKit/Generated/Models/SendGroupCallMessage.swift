//
//  SendGroupCallMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Sends a message to other participants of a group call. Requires groupCall.can_send_messages right
public struct SendGroupCallMessage: Codable, Equatable, Hashable {

    /// Group call identifier
    public let groupCallId: Int?

    /// The number of Telegram Stars the user agreed to pay to send the message; for live stories only; 0-getOption("paid_group_call_message_star_count_max"). Must be 0 for messages sent to live stories posted by the current user
    public let paidMessageStarCount: Int64?

    /// Text of the message to send; 1-getOption("group_call_message_text_length_max") characters for non-live-stories; see updateGroupCallMessageLevels for live story restrictions, which depends on paid_message_star_count. Can't contain line feeds for live stories
    public let text: FormattedText?


    public init(
        groupCallId: Int?,
        paidMessageStarCount: Int64?,
        text: FormattedText?
    ) {
        self.groupCallId = groupCallId
        self.paidMessageStarCount = paidMessageStarCount
        self.text = text
    }
}

