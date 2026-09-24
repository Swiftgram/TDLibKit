//
//  ChatLists.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-8b765a16
//  https://github.com/tdlib/td/tree/8b765a16
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

