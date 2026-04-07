//
//  ChatAdministrator.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Contains information about a chat administrator
public struct ChatAdministrator: Codable, Equatable, Hashable {

    /// True, if the current user can edit the administrator privileges for the administrator
    public let canBeEdited: Bool

    /// Custom title of the administrator
    public let customTitle: String

    /// True, if the user is the owner of the chat
    public let isOwner: Bool

    /// User identifier of the administrator
    public let userId: Int64


    public init(
        canBeEdited: Bool,
        customTitle: String,
        isOwner: Bool,
        userId: Int64
    ) {
        self.canBeEdited = canBeEdited
        self.customTitle = customTitle
        self.isOwner = isOwner
        self.userId = userId
    }
}

