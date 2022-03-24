//
//  ChatLists.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.2-ff014add
//  https://github.com/tdlib/td/tree/ff014add
//

import Foundation


/// Contains a list of chat lists
public struct ChatLists: Codable, Equatable {

    /// List of chat lists
    public let chatLists: [ChatList]


    public init(chatLists: [ChatList]) {
        self.chatLists = chatLists
    }
}

