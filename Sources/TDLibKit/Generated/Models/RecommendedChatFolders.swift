//
//  RecommendedChatFolders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-7e950e1b
//  https://github.com/tdlib/td/tree/7e950e1b
//

import Foundation


/// Contains a list of recommended chat folders
public struct RecommendedChatFolders: Codable, Equatable, Hashable {

    /// List of recommended chat folders
    public let chatFolders: [RecommendedChatFolder]


    public init(chatFolders: [RecommendedChatFolder]) {
        self.chatFolders = chatFolders
    }
}

