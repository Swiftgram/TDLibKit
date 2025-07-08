//
//  MarkChecklistTasksAsDone.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Adds tasks of a checklist in a message as done or not done
public struct MarkChecklistTasksAsDone: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64?

    /// Identifiers of tasks that were marked as done
    public let markedAsDoneTaskIds: [Int]?

    /// Identifiers of tasks that were marked as not done
    public let markedAsNotDoneTaskIds: [Int]?

    /// Identifier of the message containing the checklist. Use messageProperties.can_mark_tasks_as_done to check whether the tasks can be marked as done or not done
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        markedAsDoneTaskIds: [Int]?,
        markedAsNotDoneTaskIds: [Int]?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.markedAsDoneTaskIds = markedAsDoneTaskIds
        self.markedAsNotDoneTaskIds = markedAsNotDoneTaskIds
        self.messageId = messageId
    }
}

