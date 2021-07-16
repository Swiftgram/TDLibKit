//
//  CreateSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Returns an existing chat corresponding to a known secret chat
public struct CreateSecretChat: Codable {

    /// Secret chat identifier
    public let secretChatId: Int


    public init(secretChatId: Int) {
        self.secretChatId = secretChatId
    }
}

