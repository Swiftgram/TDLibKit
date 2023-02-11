//
//  RemoveContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-6ba394fc
//  https://github.com/tdlib/td/tree/6ba394fc
//

import Foundation


/// Removes users from the contact list
public struct RemoveContacts: Codable, Equatable {

    /// Identifiers of users to be deleted
    public let userIds: [Int64]?


    public init(userIds: [Int64]?) {
        self.userIds = userIds
    }
}

