//
//  ImportContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-a53cb30e
//  https://github.com/tdlib/td/tree/a53cb30e
//

import Foundation


/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
public struct ImportContacts: Codable, Equatable {

    /// The list of contacts to import or edit; contacts' vCard are ignored and are not imported
    public let contacts: [Contact]?


    public init(contacts: [Contact]?) {
        self.contacts = contacts
    }
}

