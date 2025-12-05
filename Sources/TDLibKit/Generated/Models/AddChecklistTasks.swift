//
//  AddChecklistTasks.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Adds tasks to a checklist in a message
public struct AddChecklistTasks: Codable, Equatable, Hashable {

    /// Identifier of the chat with the message
    public let chatId: Int64?

    /// Identifier of the message containing the checklist. Use messageProperties.can_add_tasks to check whether the tasks can be added
    public let messageId: Int64?

    /// List of added tasks
    public let tasks: [InputChecklistTask]?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        tasks: [InputChecklistTask]?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.tasks = tasks
    }
}

