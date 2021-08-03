//
//  CreateNewSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Creates a new secret chat. Returns the newly created chat
public struct CreateNewSecretChat: Codable {

    /// Identifier of the target user
    public let userId: Int


    public init(userId: Int) {
        self.userId = userId
    }
}

