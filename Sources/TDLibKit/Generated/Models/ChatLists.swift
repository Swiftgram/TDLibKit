//
//  ChatLists.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
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

