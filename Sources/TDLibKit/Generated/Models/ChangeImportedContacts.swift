//
//  ChangeImportedContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts. Query result depends on the result of the previous query, so only one query is possible at the same time
public struct ChangeImportedContacts: Codable, Equatable, Hashable {

    /// The new list of contacts, contact's vCard are ignored and are not imported
    public let contacts: [Contact]?


    public init(contacts: [Contact]?) {
        self.contacts = contacts
    }
}

