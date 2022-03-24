//
//  CloseSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-ff014add
//  https://github.com/tdlib/td/tree/ff014add
//

import Foundation


/// Closes a secret chat, effectively transferring its state to secretChatStateClosed
public struct CloseSecretChat: Codable, Equatable {

    /// Secret chat identifier
    public let secretChatId: Int?


    public init(secretChatId: Int?) {
        self.secretChatId = secretChatId
    }
}

