//
//  SavedMessagesTags.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.25-6c5441c8
//  https://github.com/tdlib/td/tree/6c5441c8
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

