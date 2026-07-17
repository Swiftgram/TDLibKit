//
//  RecommendedChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-d8d46dfa
//  https://github.com/tdlib/td/tree/d8d46dfa
//

import Foundation


/// Describes a recommended chat folder
public struct RecommendedChatFolder: Codable, Equatable, Hashable {

    public let description: String

    /// The chat folder
    public let folder: ChatFolder


    public init(
        description: String,
        folder: ChatFolder
    ) {
        self.description = description
        self.folder = folder
    }
}

