//
//  RemoveContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-77b34797
//  https://github.com/tdlib/td/tree/77b34797
//

import Foundation


/// Removes users from the contact list
public struct RemoveContacts: Codable, Equatable, Hashable {

    /// Identifiers of users to be deleted
    public let userIds: [Int64]?


    public init(userIds: [Int64]?) {
        self.userIds = userIds
    }
}

