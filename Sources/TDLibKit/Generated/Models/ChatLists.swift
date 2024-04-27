//
//  ChatLists.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-4d90c2a2
//  https://github.com/tdlib/td/tree/4d90c2a2
//

import Foundation


/// Contains a list of chat lists
public struct ChatLists: Codable, Equatable, Hashable {

    /// List of chat lists
    public let chatLists: [ChatList]


    public init(chatLists: [ChatList]) {
        self.chatLists = chatLists
    }
}

