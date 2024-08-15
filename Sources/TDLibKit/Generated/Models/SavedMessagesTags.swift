//
//  SavedMessagesTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-8d08b34e
//  https://github.com/tdlib/td/tree/8d08b34e
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

