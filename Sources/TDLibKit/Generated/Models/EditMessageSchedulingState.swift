//
//  EditMessageSchedulingState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-b39769be
//  https://github.com/tdlib/td/tree/b39769be
//

import Foundation


/// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed
public struct EditMessageSchedulingState: Codable, Equatable, Hashable {

    /// The chat the message belongs to
    public let chatId: Int64?

    /// Identifier of the message. Use messageProperties.can_edit_scheduling_state to check whether the message is suitable
    public let messageId: Int64?

    /// The new message scheduling state; pass null to send the message immediately
    public let schedulingState: MessageSchedulingState?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        schedulingState: MessageSchedulingState?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.schedulingState = schedulingState
    }
}

