//
//  ChangeImportedContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.11-d4f5e672
//  https://github.com/tdlib/td/tree/d4f5e672
//

import Foundation


/// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts. Query result depends on the result of the previous query, so only one query is possible at the same time
public struct ChangeImportedContacts: Codable, Equatable {

    /// The new list of contacts, contact's vCard are ignored and are not imported
    public let contacts: [Contact]?


    public init(contacts: [Contact]?) {
        self.contacts = contacts
    }
}

