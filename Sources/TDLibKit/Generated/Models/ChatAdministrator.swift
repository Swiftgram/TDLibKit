//
//  ChatAdministrator.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-0d16085d
//  https://github.com/tdlib/td/tree/0d16085d
//

import Foundation


/// Contains information about a chat administrator
public struct ChatAdministrator: Codable, Equatable, Hashable {

    /// Custom title of the administrator
    public let customTitle: String

    /// True, if the user is the owner of the chat
    public let isOwner: Bool

    /// User identifier of the administrator
    public let userId: Int64


    public init(
        customTitle: String,
        isOwner: Bool,
        userId: Int64
    ) {
        self.customTitle = customTitle
        self.isOwner = isOwner
        self.userId = userId
    }
}

