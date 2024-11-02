//
//  RecommendedChatFolders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.39-056963e4
//  https://github.com/tdlib/td/tree/056963e4
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

