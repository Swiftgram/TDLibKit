//
//  ImportedContact.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Describes a contact to import
public struct ImportedContact: Codable, Equatable, Hashable {

    /// First name of the user; 1-64 characters
    public let firstName: String

    /// Last name of the user; 0-64 characters
    public let lastName: String

    /// Note to add about the user; 0-getOption("user_note_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed; pass null to keep the current user's note
    public let note: FormattedText?

    /// Phone number of the user
    public let phoneNumber: String


    public init(
        firstName: String,
        lastName: String,
        note: FormattedText?,
        phoneNumber: String
    ) {
        self.firstName = firstName
        self.lastName = lastName
        self.note = note
        self.phoneNumber = phoneNumber
    }
}

