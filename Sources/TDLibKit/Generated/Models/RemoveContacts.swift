//
//  RemoveContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Removes users from the contact list
public struct RemoveContacts: Codable {

    /// Identifiers of users to be deleted
    public let userIds: [Int64]?


    public init(userIds: [Int64]?) {
        self.userIds = userIds
    }
}

