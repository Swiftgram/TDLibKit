//
//  ImportContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
public struct ImportContacts: Codable, Equatable, Hashable {

    /// The list of contacts to import or edit
    public let contacts: [ImportedContact]?


    public init(contacts: [ImportedContact]?) {
        self.contacts = contacts
    }
}

