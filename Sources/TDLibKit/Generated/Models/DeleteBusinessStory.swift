//
//  DeleteBusinessStory.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Deletes a story posted by the bot on behalf of a business account; for bots only
public struct DeleteBusinessStory: Codable, Equatable, Hashable {

    /// Unique identifier of business connection
    public let businessConnectionId: String?

    /// Identifier of the story to delete
    public let storyId: Int?


    public init(
        businessConnectionId: String?,
        storyId: Int?
    ) {
        self.businessConnectionId = businessConnectionId
        self.storyId = storyId
    }
}

