//
//  SetCloseFriends.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Changes the list of close friends of the current user
public struct SetCloseFriends: Codable, Equatable, Hashable {

    /// User identifiers of close friends; the users must be contacts of the current user
    public let userIds: [Int64]?


    public init(userIds: [Int64]?) {
        self.userIds = userIds
    }
}

