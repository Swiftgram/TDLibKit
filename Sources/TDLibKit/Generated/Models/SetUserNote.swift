//
//  SetUserNote.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-af0cb1d3
//  https://github.com/tdlib/td/tree/af0cb1d3
//

import Foundation


/// Changes a note of a contact user
public struct SetUserNote: Codable, Equatable, Hashable {

    /// Note to set for the user; 0-getOption("user_note_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
    public let note: FormattedText?

    /// User identifier
    public let userId: Int64?


    public init(
        note: FormattedText?,
        userId: Int64?
    ) {
        self.note = note
        self.userId = userId
    }
}

