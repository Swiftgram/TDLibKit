//
//  ChecklistTask.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-bb474a20
//  https://github.com/tdlib/td/tree/bb474a20
//

import Foundation


/// Describes a task in a checklist
public struct ChecklistTask: Codable, Equatable, Hashable, Identifiable {

    /// Identifier of the user that completed the task; 0 if the task isn't completed
    public let completedByUserId: Int64

    /// Point in time (Unix timestamp) when the task was completed; 0 if the task isn't completed
    public let completionDate: Int

    /// Unique identifier of the task
    public let id: Int

    /// Text of the task; may contain only Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, Url, EmailAddress, Mention, Hashtag, Cashtag and PhoneNumber entities
    public let text: FormattedText


    public init(
        completedByUserId: Int64,
        completionDate: Int,
        id: Int,
        text: FormattedText
    ) {
        self.completedByUserId = completedByUserId
        self.completionDate = completionDate
        self.id = id
        self.text = text
    }
}

