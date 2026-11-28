//
//  SavedMessagesTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains a list of tags used in Saved Messages
public struct SavedMessagesTags: Codable, Equatable, Hashable {

    /// List of tags
    public let tags: [SavedMessagesTag]


    public init(tags: [SavedMessagesTag]) {
        self.tags = tags
    }
}

