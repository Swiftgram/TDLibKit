//
//  CreateNewSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-0ada45c3
//  https://github.com/tdlib/td/tree/0ada45c3
//

import Foundation


/// Creates a new secret chat. Returns the newly created chat
public struct CreateNewSecretChat: Codable, Equatable, Hashable {

    /// Identifier of the target user
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

