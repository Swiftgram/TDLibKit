//
//  RecommendedChatFolders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-672f837c
//  https://github.com/tdlib/td/tree/672f837c
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

