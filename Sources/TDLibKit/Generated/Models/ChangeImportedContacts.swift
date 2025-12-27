//
//  ChangeImportedContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts. Query result depends on the result of the previous query, so only one query is possible at the same time
public struct ChangeImportedContacts: Codable, Equatable, Hashable {

    /// The new list of contacts to import
    public let contacts: [ImportedContact]?


    public init(contacts: [ImportedContact]?) {
        self.contacts = contacts
    }
}

