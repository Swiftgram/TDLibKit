//
//  CreateSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
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

