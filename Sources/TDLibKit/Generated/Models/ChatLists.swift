//
//  ChatLists.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-1cace9e6
//  https://github.com/tdlib/td/tree/1cace9e6
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

