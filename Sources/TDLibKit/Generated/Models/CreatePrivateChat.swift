//
//  CreatePrivateChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-a53cb30e
//  https://github.com/tdlib/td/tree/a53cb30e
//

import Foundation


/// Returns an existing chat corresponding to a given user
public struct CreatePrivateChat: Codable, Equatable {

    /// If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
    public let force: Bool?

    /// User identifier
    public let userId: Int64?


    public init(
        force: Bool?,
        userId: Int64?
    ) {
        self.force = force
        self.userId = userId
    }
}

