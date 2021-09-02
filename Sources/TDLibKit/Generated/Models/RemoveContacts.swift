//
//  RemoveContacts.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Removes users from the contact list
public struct RemoveContacts: Codable {

    /// Identifiers of users to be deleted
    public let userIds: [Int]


    public init(userIds: [Int]) {
        self.userIds = userIds
    }
}

