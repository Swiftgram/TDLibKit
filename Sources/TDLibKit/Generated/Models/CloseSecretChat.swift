//
//  CloseSecretChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Closes a secret chat, effectively transferring its state to secretChatStateClosed
public struct CloseSecretChat: Codable, Equatable, Hashable {

    /// Secret chat identifier
    public let secretChatId: Int?


    public init(secretChatId: Int?) {
        self.secretChatId = secretChatId
    }
}

