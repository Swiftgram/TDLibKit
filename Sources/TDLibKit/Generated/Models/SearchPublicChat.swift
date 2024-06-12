//
//  SearchPublicChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Searches a public chat by its username. Currently, only private chats, supergroups and channels can be public. Returns the chat if found; otherwise, an error is returned
public struct SearchPublicChat: Codable, Equatable, Hashable {

    /// Username to be resolved
    public let username: String?


    public init(username: String?) {
        self.username = username
    }
}

