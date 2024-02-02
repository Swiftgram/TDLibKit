//
//  CreatePrivateChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.24-6c4804b5
//  https://github.com/tdlib/td/tree/6c4804b5
//

import Foundation


/// Returns an existing chat corresponding to a given user
public struct CreatePrivateChat: Codable, Equatable, Hashable {

    /// Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
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

