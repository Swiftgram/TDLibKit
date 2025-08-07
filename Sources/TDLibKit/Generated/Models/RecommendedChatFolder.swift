//
//  RecommendedChatFolder.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
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

