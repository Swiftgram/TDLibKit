//
//  ImportContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

